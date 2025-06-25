import 'package:notes/blocs/auth/auth.bloc.dart';
import 'package:notes/components/app/bottom_navigation.dart';
import 'package:notes/components/buttons/account_avatar_with_sync_status.dart';
import 'package:notes/i18n/strings.g.dart';
import 'package:notes/main.dart';
import 'package:notes/pages/my_notes/my_notes.dart';
import 'package:notes/pages/more_apps/more_apps.dart';
import 'package:notes/pages/note_detail/note_detail.dart';
import 'package:notes/pages/organize/organize.dart';
import 'package:notes/pages/search/search.dart';
import 'package:notes/services/sync.service.dart';
import 'package:notes/utils/shortcuts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_plus/icons_plus.dart';

final $constants = Constants();

@immutable
class Constants {
  late final Corners corners = Corners();
  late final Insets insets = Insets();
  late final Palette palette = Palette();
  late final Navigation navigation = Navigation();
  late final ScreenSize screenSize = ScreenSize();
  late final Ads ads = Ads();
}

@immutable
class Corners {
  late final double none = 0;
  late final double xxs = 2;
  late final double xs = 4;
  late final double sm = 8;
  late final double md = 12;
  late final double lg = 16;
  late final double xl = 28;
  late final double xxl = 36;
  late final double full = 1000;
}

@immutable
class Insets {
  late final double xxs = 4;
  late final double xs = 8;
  late final double sm = 16;
  late final double md = 24;
  late final double lg = 32;
  late final double xl = 48;
  late final double xxl = 56;
  late final double offset = 80;
}

@immutable
class ScreenSize {
  final double sm = 600;
  final double md = 900;
  final double lg = 1200;
  final double xl = 1536;
}

@immutable
class Palette {
  final white = const Color(0xFFFFFFFF);
  final black = const Color(0xFF000000);
  final grey = const Color(0xFF9E9E9E);
  final red = const Color(0xFFFF0000);
  final orange = const Color(0xFFFF8000);
  final yellow = const Color(0xFFFCCC1A);
  final green = const Color(0xFF66B032);
  final cyan = const Color(0xFF00FFFF);
  final blue = const Color(0xFF0000FF);
  final purple = const Color(0xFF0080FF);
  final magenta = const Color(0xFFFF00FF);
}

@immutable
class Ads {
  final _ads = {};

  getAd(String adName, String? platform) {
    if (!['ios', 'android'].contains(platform)) {
      throw Exception('invalid_ad_platform');
    }
    if (env?.env == "prod") {
      return _ads[adName]?[platform];
    } else {
      return "ca-app-pub-3940256099942544/5224354917";
    }
  }
}

@immutable
class Navigation {
  List<NavigationSection> secondaryMenuSections(BuildContext context) => [
        const NavigationSection(
          key: Key("notes"),
          items: [],
        ),
        const NavigationSection(
          key: Key("calendar"),
          items: [],
        ),
        const NavigationSection(
          key: Key("add_task"),
          items: [],
        ),
        const NavigationSection(
          key: Key("habits"),
          items: [],
        ),
        const NavigationSection(
          key: Key("more"),
          items: [],
        ),
      ];

  // list of fixed items, limited to 5 on mobile
  // on mobile: the rest is added as a grid on the more apps page (last item to the right)
  // on desktop: the more apps page is moved at the end of the menu
  List<NavigationItem> primaryMenuItems(BuildContext context) => [
        NavigationItem(
          key: const Key("my_notes"),
          icon: const Icon(
            LineAwesome.file,
            size: 25,
          ),
          cupertinoIcon: const Icon(
            CupertinoIcons.doc,
            size: 25,
          ),
          label: context.t.my_notes.title,
          body: const MyNotes(),
          appBar: AppBar(
            key: const Key("my_notes"),
            backgroundColor: getTheme(context).surface,
            leading: Container(),
            title: Text(
              context.t.my_notes.title,
              style: getTextTheme(context).headlineSmall!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            actions: [
              BlocBuilder<AuthBloc, AuthState>(builder: (context, authState) {
                if (authState is LoggedIn && !isDesktop(context)) {
                  return Padding(
                    padding: EdgeInsets.only(right: $constants.insets.sm),
                    child: const AccountAvatarWithSyncStatus(),
                  );
                }
                return Container();
              }),
            ],
          ),
        ),
        NavigationItem(
          key: const Key("search"),
          icon: const Icon(
            LineAwesome.search_solid,
            size: 25,
          ),
          cupertinoIcon: const Icon(
            CupertinoIcons.search,
            size: 25,
          ),
          label: context.t.search.title,
          body: const Search(),
          appBar: AppBar(
              key: const Key("search"),
              backgroundColor: getTheme(context).surface,
              surfaceTintColor: getTheme(context).surface,
              leading: Container(),
              title: Text(
                context.t.search.title,
                style: getTextTheme(context).headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              actions: [
                BlocBuilder<AuthBloc, AuthState>(builder: (context, authState) {
                  if (authState is LoggedIn && !isDesktop(context)) {
                    return Padding(
                      padding: EdgeInsets.only(right: $constants.insets.sm),
                      child: const AccountAvatarWithSyncStatus(),
                    );
                  }
                  return Container();
                })
              ]),
        ),
        NavigationItem(
          key: const Key("add_notes"),
          icon: Icon(
            LineAwesome.plus_solid,
            color: getTheme(context).tertiary,
          ),
          cupertinoIcon: Icon(
            CupertinoIcons.plus_circle_fill,
            color: getTheme(context).secondary,
          ),
          label: context.t.actions.add,
          color: getTheme(context).secondary,
          onTap: (index) {
            if (isDesktop(context)) {
              showDialog(
                  context: context,
                  builder: (context) => Dialog(
                        child: SizedBox(
                          height: getSize(context).height * 0.8,
                          width: getSize(context).width * 0.8,
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.circular($constants.corners.md),
                            child: const NoteDetail(),
                          ),
                        ),
                      ));
            } else {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const NoteDetail()));
            }
            SyncService.sync(context);
          },
        ),
        NavigationItem(
          key: const Key("organize"),
          icon: const Icon(
            LineAwesome.filter_solid,
            size: 25,
          ),
          cupertinoIcon: const Icon(
            CupertinoIcons.square_fill_line_vertical_square,
            size: 25,
          ),
          label: context.t.organize.title,
          body: const Organize(),
          appBar: AppBar(
              key: const Key("organize"),
              backgroundColor: getTheme(context).surface,
              leading: Container(),
              title: Text(
                context.t.organize.title,
                style: getTextTheme(context).headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              actions: [
                BlocBuilder<AuthBloc, AuthState>(builder: (context, authState) {
                  if (authState is LoggedIn && !isDesktop(context)) {
                    return Padding(
                      padding: EdgeInsets.only(right: $constants.insets.sm),
                      child: const AccountAvatarWithSyncStatus(),
                    );
                  }
                  return Container();
                })
              ]),
        ),
        NavigationItem(
          key: const Key("more"),
          icon: const Icon(
            CupertinoIcons.ellipsis_circle_fill,
            size: 25,
          ),
          cupertinoIcon: const Icon(
            CupertinoIcons.ellipsis_circle_fill,
            size: 25,
          ),
          label: context.t.more.title,
          body: const MoreApps(),
          appBar: AppBar(
              key: const Key("more"),
              backgroundColor: getTheme(context).surface,
              leading: Container(),
              title: Text(
                context.t.more.title,
                style: getTextTheme(context).headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              actions: [
                BlocBuilder<AuthBloc, AuthState>(builder: (context, authState) {
                  if (authState is LoggedIn && !isDesktop(context)) {
                    return Padding(
                      padding: EdgeInsets.only(right: $constants.insets.sm),
                      child: const AccountAvatarWithSyncStatus(),
                    );
                  }
                  return Container();
                })
              ]),
        ),
      ];
}
