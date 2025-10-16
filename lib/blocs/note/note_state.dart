part of 'note_bloc.dart';

sealed class NoteState extends Equatable {
  final List<Note>? notes;
  final List<Patch>? stagedPatches;
  final SyncResult? syncResult;
  final DateTime? latestSync;
  const NoteState({this.notes, this.stagedPatches, this.syncResult, this.latestSync});

  @override
  List<Object?> get props => [notes, stagedPatches, syncResult, latestSync];
}

class NoteInitial extends NoteState {
  const NoteInitial({super.notes, super.stagedPatches, super.syncResult, super.latestSync});
}

class NoteLoading extends NoteState {
  const NoteLoading({super.notes, super.stagedPatches, super.syncResult, super.latestSync});
}

class NoteLoaded extends NoteState {
  const NoteLoaded({super.notes, super.stagedPatches, super.syncResult, super.latestSync});

  @override
  List<Object?> get props => [notes, stagedPatches, syncResult, latestSync];
}

class NoteError extends NoteState {
  const NoteError(
      {super.notes, super.stagedPatches, super.syncResult, super.latestSync, required this.message});
  final String message;

  @override
  List<Object?> get props => [message, notes, stagedPatches, syncResult, latestSync];
}

class NoteCreating extends NoteState {
  const NoteCreating({super.notes, super.stagedPatches, super.syncResult, super.latestSync});
}

class NoteCreated extends NoteState {
  const NoteCreated({super.notes, super.stagedPatches, super.syncResult, super.latestSync});
}

class NoteUpdating extends NoteState {
  const NoteUpdating({super.notes, super.stagedPatches, super.syncResult, super.latestSync});
}

class NoteUpdated extends NoteState {
  const NoteUpdated({super.notes, super.stagedPatches, super.syncResult, super.latestSync});
}

class NoteEdited extends NoteState {
  const NoteEdited({super.notes, super.stagedPatches, super.syncResult, super.latestSync});
}

class NoteDeleting extends NoteState {
  const NoteDeleting({super.notes, super.stagedPatches, super.syncResult, super.latestSync});
}

class NoteDeleted extends NoteState {
  const NoteDeleted({super.notes, super.stagedPatches, super.syncResult, super.latestSync});
}

class NoteArchiving extends NoteState {
  const NoteArchiving({super.notes, super.stagedPatches, super.syncResult, super.latestSync});
}

class NoteArchived extends NoteState {
  const NoteArchived({super.notes, super.stagedPatches, super.syncResult, super.latestSync});
}

class NoteRestoring extends NoteState {
  const NoteRestoring({super.notes, super.stagedPatches, super.syncResult, super.latestSync});
}

class NoteRestored extends NoteState {
  const NoteRestored({super.notes, super.stagedPatches, super.syncResult, super.latestSync});
}

class NoteSyncInProgress extends NoteState {
  const NoteSyncInProgress(
      {super.notes, super.stagedPatches, super.syncResult, super.latestSync});
}

class NoteSyncSuccess extends NoteState {
  const NoteSyncSuccess({super.notes, super.stagedPatches, super.syncResult, super.latestSync});
}
