part of 'note_bloc.dart';

sealed class NoteState extends Equatable {
  final List<Note>? notes;
  const NoteState(this.notes);

  @override
  List<Object?> get props => [notes];
}

class NoteInitial extends NoteState {
  const NoteInitial() : super(null);
}

class NoteLoading extends NoteState {
  const NoteLoading(
    super.notes,
  );
}

class NoteLoaded extends NoteState {
  const NoteLoaded(List<Note> super.notes);

  @override
  List<Object?> get props => [notes];
}

class NoteError extends NoteState {
  const NoteError(super.notes, this.message);
  final String message;

  @override
  List<Object?> get props => [message];
}

class NoteCreating extends NoteState {
  const NoteCreating(super.notes);
}
class NoteCreated extends NoteState {
  const NoteCreated(super.notes);
}

class NoteUpdating extends NoteState {
  const NoteUpdating(super.notes);
}
class NoteUpdated extends NoteState {
  const NoteUpdated(super.notes);
}

class NoteDeleting extends NoteState {
  const NoteDeleting(super.notes);
}
class NoteDeleted extends NoteState {
  const NoteDeleted(super.notes);
}