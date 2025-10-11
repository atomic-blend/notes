import 'package:ab_shared/components/app/ab_navbar.dart';
import 'package:ab_shared/components/app/ab_header.dart';
import 'package:ab_shared/utils/constants.dart';
import 'package:notes/i18n/strings.g.dart';
import 'package:notes/pages/note_detail/note_detail.dart';
import 'package:ab_shared/utils/shortcuts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
          location: "/notes/all",
          header: ABHeader(
            title: context.t.my_notes.title,
          ),
          action: NavigationAction(
            icon: LineAwesome.plus_solid,
            label: "Add Note",
            onTap: () {
              if (isDesktop(context)) {
                showDialog(
                    context: context,
                    builder: (context) => const Dialog(child: NoteDetail()));
              } else {
                showModalBottomSheet(
                    context: context, builder: (context) => const NoteDetail());
              }
            },
          ),
          subItems: const [],
        ),
        NavigationItem(
          key: const Key("search"),
          enabled: false,
          icon: LineAwesome.search_solid,
          cupertinoIcon: CupertinoIcons.search,
          label: context.t.search.title,
          location: "/search",
          header: ABHeader(
            title: context.t.my_notes.title,
          ),
          action: NavigationAction(
            icon: LineAwesome.plus_solid,
            label: "Add Note",
            onTap: () {
              if (isDesktop(context)) {
                showDialog(
                    context: context,
                    builder: (context) => const Dialog(child: NoteDetail()));
              } else {
                showModalBottomSheet(
                    context: context, builder: (context) => const NoteDetail());
              }
            },
          ),
          subItems: const [],
        ),
        NavigationItem(
          key: const Key("organize"),
          icon: LineAwesome.filter_solid,
          cupertinoIcon: CupertinoIcons.square_fill_line_vertical_square,
          label: context.t.organize.title,
          location: "/organize",
          action: NavigationAction(
            icon: LineAwesome.plus_solid,
            label: "Add Note",
            onTap: () {
              if (isDesktop(context)) {
                showDialog(
                    context: context,
                    builder: (context) => const Dialog(child: NoteDetail()));
              } else {
                showModalBottomSheet(
                    context: context, builder: (context) => const NoteDetail());
              }
            },
          ),
          subItems: const [],
        ),
        const NavigationItem(
          key: Key("account"),
          icon: LineAwesome.user_solid,
          cupertinoIcon: CupertinoIcons.person,
          label: "Account",
          location: "/account",
          subItems: [],
        ),
        const NavigationItem(
          key: Key("settings"),
          icon: LineAwesome.cog_solid,
          cupertinoIcon: CupertinoIcons.gear,
          label: "Settings",
          location: "/settings",
          subItems: [],
        ),
      ];
}
