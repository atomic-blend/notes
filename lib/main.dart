import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:ab_shared/services/encryption.service.dart';
import 'package:ab_shared/services/revenue_cat_service.dart';
import 'package:ab_shared/utils/api_client.dart';
import 'package:ab_shared/utils/env/env.dart';
import 'package:ab_shared/utils/shortcuts.dart';
import 'package:flutter_age/flutter_age.dart';
import 'package:notes/blocs/app/app.bloc.dart';
import 'package:ab_shared/blocs/auth/auth.bloc.dart';
import 'package:ab_shared/i18n/strings.g.dart' as ab_shared_translations;
import 'package:notes/blocs/folder/folder.bloc.dart';
import 'package:notes/blocs/note/note_bloc.dart';
import 'package:notes/blocs/tag/tag.bloc.dart';
import 'package:notes/i18n/strings.g.dart';
import 'package:notes/services/notifications/background_notification_processor.dart';
import 'package:notes/services/notifications/fcm_service.dart';
import 'package:notes/services/notifications/processors/processors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:jiffy/jiffy.dart';
import 'package:macos_window_utils/window_manipulator.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:toastification/toastification.dart';

import 'app.dart';
import 'firebase_options.dart';

EnvModel? env;
SharedPreferences? prefs;
FcmService? fcmService;
Map<String, dynamic>? userData;
String? userKey;
String? agePublicKey;
EncryptionService? encryptionService;
RevenueCatService? revenueCatService;
ApiClient? globalApiClient;

FutureOr<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SentryFlutter.init((options) {
    String? dsn = const String.fromEnvironment(
      'SENTRY_DSN',
    );

    options.dsn = dsn;
    options.environment = env?.env;

    // Adds request headers and IP for users,
    // visit: https://docs.sentry.io/platforms/dart/data-management/data-collected/ for more info
    options.sendDefaultPii = true;
  }, appRunner: () async {
    tz.initializeTimeZones();

    env = await EnvModel.create();
    prefs = await SharedPreferences.getInstance();
    await LocaleSettings.useDeviceLocale();

    await FlutterAge.init();

    globalApiClient = ApiClient(
      env: env!,
      prefs: prefs!,
    ).init();

    if (!kIsWeb && Platform.isMacOS) {
      await WindowManipulator.initialize();
      WindowManipulator.makeTitlebarTransparent();
      WindowManipulator.enableFullSizeContentView();
    }

   

    final rawUserData = prefs?.getString("user");
    userData = rawUserData != null ? json.decode(rawUserData) : null;
    userKey = prefs?.getString("key");
    agePublicKey = prefs?.getString("agePublicKey");

    // Only create encryption service if user data exists
    if (userData != null && userData!['keySet'] != null) {
      encryptionService = EncryptionService(
        userSalt: userData?['keySet']['salt'],
        prefs: prefs!,
        userKey: userKey,
        agePublicKey: agePublicKey,
      );
    }

    if (isPaymentSupported()) {
      revenueCatService = RevenueCatService(
        googleRevenueCatApiKey: env!.googleRevenueCatApiKey,
        appleRevenueCatApiKey: env!.appleRevenueCatApiKey,
      );
      await revenueCatService!.initPlatformState();
    }

    if (kIsWeb || !Platform.isLinux) {
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      fcmService = FcmService();
      fcmService!.initFCM();

      // Register background handler
      FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

      // Foreground message handler
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        Processors.processAndNotify(message);
      });
    }

    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: kIsWeb || kIsWasm
          ? HydratedStorageDirectory.web
          : HydratedStorageDirectory((await getTemporaryDirectory()).path),
    );

    await LocaleSettings.useDeviceLocale();
    Jiffy.setLocale(LocaleSettings.currentLocale.languageCode);

    runApp(Sizer(builder: (context, orientation, screenType) {
      return SentryWidget(
        child: MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => AppCubit()),
              BlocProvider(create: (context) => AuthBloc(
                prefs: prefs!,
                onLogout: () {
                  userKey = null;
                  userData = null;
                  prefs?.clear();
                  globalApiClient?.setIdToken(null);
                  Sentry.configureScope(
                    (scope) => scope.setUser(SentryUser(id: null)),
                  );
                  encryptionService = null;
                },
                onLogin: (e) {
                  encryptionService = e;
                },
                globalApiClient: globalApiClient!,
                encryptionService: encryptionService,
              )),
              BlocProvider(create: (context) => TagBloc()),
              BlocProvider(create: (context) => FolderBloc()),
              BlocProvider(create: (context) => NoteBloc()),
            ],
            child: ab_shared_translations.TranslationProvider(
              child: TranslationProvider(
                  child: const ToastificationWrapper(child: App())),
            )),
      );
    }));
  });
}
