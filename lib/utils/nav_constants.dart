import 'package:ab_shared/blocs/auth/auth.bloc.dart';
import 'package:ab_shared/components/app/ab_navbar.dart';
import 'package:ab_shared/components/app/ab_header.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/blocs/folder/folder.bloc.dart';
import 'package:notes/blocs/note/note_bloc.dart';
import 'package:notes/blocs/tag/tag.bloc.dart';
import 'package:notes/i18n/strings.g.dart';
import 'package:notes/pages/note_detail/note_detail.dart';
import 'package:ab_shared/utils/shortcuts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:notes/services/sync.service.dart';

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
          header: _buildHeader(context, context.t.my_notes.title),
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
          subItems: [
            NavigationItem(
              key: const Key("all"),
              label: "All",
              location: "/notes/all",
              icon: LineAwesome.file,
              cupertinoIcon: CupertinoIcons.doc,
              header: _buildHeader(context, "All"),
            ),
            NavigationItem(
              key: const Key("trash"),
              label: "Trash",
              location: "/notes/trashed",
              icon: LineAwesome.trash_solid,
              cupertinoIcon: CupertinoIcons.trash,
              header: _buildHeader(context, "Trash"),
            ),
          ],
        ),
        NavigationItem(
          key: const Key("search"),
          enabled: false,
          icon: LineAwesome.search_solid,
          cupertinoIcon: CupertinoIcons.search,
          label: context.t.search.title,
          location: "/search",
          header: _buildHeader(context, context.t.search.title),
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
          header: _buildHeader(context, context.t.organize.title),
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
          key: const Key("account"),
          icon: LineAwesome.cog_solid,
          cupertinoIcon: CupertinoIcons.settings,
          label: "Account & Settings",
          location: "/account",
          subItems: const [],
          header: _buildHeader(context, "Account & Settings"),
        ),
      ];
}

Widget _buildHeader(BuildContext context, String title) {
  return BlocBuilder<TagBloc, TagState>(builder: (context, tagState) {
    return BlocBuilder<FolderBloc, FolderState>(
        builder: (context, folderState) {
      return BlocBuilder<AuthBloc, AuthState>(builder: (context, authState) {
        return BlocBuilder<NoteBloc, NoteState>(
          builder: (context, noteState) {
            return ABHeader(
              title: title,
              syncedElements: SyncService.getSyncedElements(
                noteState: noteState,
                folderState: folderState,
                tagState: tagState,
              ),
              isSyncing: SyncService.isSyncing(
                noteState: noteState,
                folderState: folderState,
                tagState: tagState,
                authState: authState,
              ),
            );
          },
        );
      });
    });
  });
}
