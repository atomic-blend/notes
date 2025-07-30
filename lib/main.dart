import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter_age/flutter_age.dart';
import 'package:notes/blocs/app/app.bloc.dart';
import 'package:notes/blocs/auth/auth.bloc.dart';
import 'package:notes/blocs/folder/folder.bloc.dart';
import 'package:notes/blocs/note/note_bloc.dart';
import 'package:notes/blocs/tag/tag.bloc.dart';
import 'package:notes/i18n/strings.g.dart';
import 'package:notes/services/notifications/background_notification_processor.dart';
import 'package:notes/services/notifications/fcm_service.dart';
import 'package:notes/services/notifications/processors/processors.dart';
import 'package:notes/services/revenue_cat_service.dart';
import 'package:notes/utils/env/env.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:jiffy/jiffy.dart';
import 'package:macos_window_utils/window_manipulator.dart';
import 'package:notes/utils/shortcuts.dart';
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

    await FlutterAge.init();

    if (!kIsWeb && Platform.isMacOS) {
      await WindowManipulator.initialize();
      WindowManipulator.makeTitlebarTransparent();
      WindowManipulator.enableFullSizeContentView();
    }

    env = await EnvModel.create();
    prefs = await SharedPreferences.getInstance();

    final rawUserData = prefs?.getString("user");
    userData = rawUserData != null ? json.decode(rawUserData) : null;
    userKey = prefs?.getString("key");
    agePublicKey = prefs?.getString("agePublicKey");

    if (isPaymentSupported()) {
      await RevenueCatService.initPlatformState();
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

    runApp(ResponsiveSizer(builder: (context, orientation, screenType) {
      return SentryWidget(
        child: MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => AppCubit()),
              BlocProvider(create: (context) => AuthBloc()),
              BlocProvider(create: (context) => TagBloc()),
              BlocProvider(create: (context) => FolderBloc()),
              BlocProvider(create: (context) => NoteBloc()),
            ],
            child: TranslationProvider(
                child: const ToastificationWrapper(child: App()))),
      );
    }));
  });
}
