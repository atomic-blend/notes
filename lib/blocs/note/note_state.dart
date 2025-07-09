part of 'note_bloc.dart';

sealed class NoteState extends Equatable {
  final List<Note>? notes;
  final List<Patch>? stagedPatches;
  final SyncResult? syncResult;
  const NoteState({this.notes, this.stagedPatches, this.syncResult});

  @override
  List<Object?> get props => [notes, stagedPatches, syncResult];
}

class NoteInitial extends NoteState {
  const NoteInitial({super.notes, super.stagedPatches, super.syncResult});
}

class NoteLoading extends NoteState {
  const NoteLoading({super.notes, super.stagedPatches, super.syncResult});
}

class NoteLoaded extends NoteState {
  const NoteLoaded({super.notes, super.stagedPatches, super.syncResult});

  @override
  List<Object?> get props => [notes, stagedPatches, syncResult];
}

class NoteError extends NoteState {
  const NoteError(
      {super.notes,
      super.stagedPatches,
      super.syncResult,
      required this.message});
  final String message;

  @override
  List<Object?> get props => [message];
}

class NoteCreating extends NoteState {
  const NoteCreating({super.notes, super.stagedPatches, super.syncResult});
}

class NoteCreated extends NoteState {
  const NoteCreated({super.notes, super.stagedPatches, super.syncResult});
}

class NoteUpdating extends NoteState {
  const NoteUpdating({super.notes, super.stagedPatches, super.syncResult});
}

class NoteUpdated extends NoteState {
  const NoteUpdated({super.notes, super.stagedPatches, super.syncResult});
}

class NoteEdited extends NoteState {
  const NoteEdited({super.notes, super.stagedPatches, super.syncResult});
}

class NoteDeleting extends NoteState {
  const NoteDeleting({super.notes, super.stagedPatches, super.syncResult});
}

class NoteDeleted extends NoteState {
  const NoteDeleted({super.notes, super.stagedPatches, super.syncResult});
}

class NoteArchiving extends NoteState {
  const NoteArchiving({super.notes, super.stagedPatches, super.syncResult});
}

class NoteArchived extends NoteState {
  const NoteArchived({super.notes, super.stagedPatches, super.syncResult});
}

class NoteRestoring extends NoteState {
  const NoteRestoring({super.notes, super.stagedPatches, super.syncResult});
}

class NoteRestored extends NoteState {
  const NoteRestored({super.notes, super.stagedPatches, super.syncResult});
}

class NoteSyncInProgress extends NoteState {
  const NoteSyncInProgress(
      {super.notes, super.stagedPatches, super.syncResult});
}

class NoteSyncSuccess extends NoteState {
  const NoteSyncSuccess({super.notes, super.stagedPatches, super.syncResult});
}
