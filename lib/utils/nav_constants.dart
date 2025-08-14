import 'package:ab_shared/blocs/auth/auth.bloc.dart';
import 'package:ab_shared/components/app/bottom_navigation.dart';
import 'package:notes/i18n/strings.g.dart';
import 'package:notes/pages/my_notes/my_notes.dart';
import 'package:notes/pages/more_apps/more_apps.dart';
import 'package:notes/pages/note_detail/note_detail.dart';
import 'package:notes/pages/organize/organize.dart';
import 'package:notes/pages/search/search.dart';
import 'package:notes/pages/sync/sync_status.dart';
import 'package:notes/services/sync.service.dart';
import 'package:ab_shared/utils/shortcuts.dart';
import 'package:flutter/cupertino.dart';
import 'package:ab_shared/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_plus/icons_plus.dart';

final $navConstants = NavConstants();

@immutable
class NavConstants {
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
                    child: const SyncStatus(),
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
                      child: const SyncStatus(),
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
                      child: const SyncStatus(),
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
                      child: const SyncStatus(),
                    );
                  }
                  return Container();
                })
              ]),
        ),
      ];
}
