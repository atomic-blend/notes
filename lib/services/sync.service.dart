import 'package:ab_shared/blocs/auth/auth.bloc.dart';
import 'package:ab_shared/components/app/ab_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:notes/blocs/folder/folder.bloc.dart';
import 'package:notes/blocs/note/note_bloc.dart';
import 'package:notes/blocs/tag/tag.bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SyncService {
  static Future<void> sync(BuildContext context) async {
    if (context.read<AuthBloc>().state is! LoggedIn) return;

    context.read<AuthBloc>().add(const RefreshUser());

    // Sync data
    context.read<TagBloc>().add(const LoadTags());
    context.read<FolderBloc>().add(const LoadFolders());

    if (context.read<NoteBloc>().state is NoteInitial) {
      context.read<NoteBloc>().add(const SyncAllNotes());
    } else if (context.read<NoteBloc>().state is NoteLoaded) {
      context.read<NoteBloc>().add(const SyncSince());
    }
  }

  static void syncUserData(BuildContext context) {
    if (context.read<AuthBloc>().state is! LoggedIn) return;

    // Sync user data
    context.read<AuthBloc>().add(const RefreshUser());
  }

  static bool isSyncing({
    required NoteState noteState,
    required FolderState folderState,
    required TagState tagState,
    required AuthState authState,
  }) {
    return noteState is NoteLoading ||
        folderState is FolderLoading ||
        tagState is TagLoading ||
        authState is Loading ||
        tagState is TagCreateLoading ||
        tagState is TagEditLoading ||
        tagState is TagDeleteLoading ||
        folderState is FolderDeleting ||
        folderState is FolderCreating ||
        folderState is FolderUpdating;
  }

  static List<SyncedElement> getSyncedElements(BuildContext context) {
    return [
      SyncedElement(
        key: const ValueKey('notes'),
        label: 'Notes',
        icon: CupertinoIcons.doc,
        count: context.read<NoteBloc>().state.notes?.length ?? 0,
      ),
      SyncedElement(
        key: const ValueKey('folders'),
        label: 'Folders',
        icon: CupertinoIcons.folder,
        count: context.read<FolderBloc>().state.folders?.length ?? 0,
      ),
      SyncedElement(
        key: const ValueKey('tags'),
        label: 'Tags',
        icon: CupertinoIcons.tag,
        count: context.read<TagBloc>().state.tags?.length ?? 0,
      ),
    ];
  }
}
