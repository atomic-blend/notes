import 'package:ab_shared/blocs/auth/auth.bloc.dart';
import 'package:notes/blocs/folder/folder.bloc.dart';
import 'package:notes/blocs/note/note_bloc.dart';
import 'package:notes/blocs/tag/tag.bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SyncService {
  static Future<void> sync(BuildContext context) async {
    if (context.read<AuthBloc>().state is! LoggedIn) return;

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
}
