import 'package:ab_shared/blocs/auth/auth.bloc.dart';
import 'package:ab_shared/components/app/ab_navbar.dart';
import 'package:ab_shared/pages/account/account.dart';
import 'package:notes/i18n/strings.g.dart';
import 'package:notes/main.dart';
import 'package:notes/pages/my_notes/my_notes.dart';
import 'package:notes/pages/more_apps/more_apps.dart';
import 'package:notes/pages/organize/organize.dart';
import 'package:notes/pages/search/search.dart';
import 'package:notes/pages/settings/settings.dart';
import 'package:notes/pages/sync/sync_status.dart';
import 'package:ab_shared/utils/shortcuts.dart';
import 'package:flutter/cupertino.dart';
import 'package:ab_shared/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_plus/icons_plus.dart';

final $navConstants = NavConstants();

@immutable
class NavConstants {
  // list of fixed items, limited to 5 on mobile
  // on mobile: the rest is added as a grid on the more apps page (last item to the right)
  // on desktop: the more apps page is moved at the end of the menu
  List<NavigationItem> primaryMenuItems(BuildContext context) => [
        NavigationItem(
          key: const Key("my_notes"),
          icon: LineAwesome.file,
          cupertinoIcon: CupertinoIcons.doc,
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
                    child: const SyncStatus(),
                  );
                }
                return Container();
              }),
            ],
          ),
          subItems: const [],
        ),
        NavigationItem(
          key: const Key("search"),
          icon: LineAwesome.search_solid,
          cupertinoIcon: CupertinoIcons.search,
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
                      child: const SyncStatus(),
                    );
                  }
                  return Container();
                })
              ]),
          subItems: const [],
        ),
        NavigationItem(
          key: const Key("organize"),
          icon: LineAwesome.filter_solid,
          cupertinoIcon: CupertinoIcons.square_fill_line_vertical_square,
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
                      child: const SyncStatus(),
                    );
                  }
                  return Container();
                })
              ]),
          subItems: const [],
        ),
        NavigationItem(
          key: const Key("more"),
          icon: CupertinoIcons.ellipsis_circle_fill,
          cupertinoIcon: CupertinoIcons.ellipsis_circle_fill,
          label: context.t.more.title,
          mobileOnly: true,
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
                      child: const SyncStatus(),
                    );
                  }
                  return Container();
                })
              ]),
          subItems: const [],
        ),
        NavigationItem(
          key: const Key("account"),
          icon: LineAwesome.user_solid,
          cupertinoIcon: CupertinoIcons.person,
          label: "Account",
          body: Account(
            globalApiClient: globalApiClient,
            encryptionService: encryptionService,
            prefs: prefs,
          ),
          subItems: const [],
          desktopOnly: true,
          appBar: AppBar(
              key: const Key("account"),
              backgroundColor: getTheme(context).surfaceContainer,
              leading: Container(),
              title: Text(
                "Account",
                style: getTextTheme(context).headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              actions: [
                BlocBuilder<AuthBloc, AuthState>(builder: (context, authState) {
                  return Container();
                })
              ]),
        ),
        NavigationItem(
          key: const Key("settings"),
          icon: LineAwesome.cog_solid,
          cupertinoIcon: CupertinoIcons.gear,
          label: "Settings",
          body: const Settings(),
          subItems: const [],
          desktopOnly: true,
          appBar: AppBar(
              key: const Key("settings"),
              backgroundColor: getTheme(context).surfaceContainer,
              leading: Container(),
              title: Text(
                "Settings",
                style: getTextTheme(context).headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              actions: [
                BlocBuilder<AuthBloc, AuthState>(builder: (context, authState) {
                  return Container();
                })
              ]),
        ),
      ];
}
