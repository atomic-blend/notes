part of 'note_bloc.dart';

sealed class NoteEvent {
  const NoteEvent();
}

final class LoadNotes extends NoteEvent {
  const LoadNotes();
}

final class AddNote extends NoteEvent {
  const AddNote(this.note);
  final Note note;
}

final class EditNote extends NoteEvent {
  const EditNote(this.note);
  final Note note;
}

final class DeleteNote extends NoteEvent {
  const DeleteNote(this.note);
  final Note note;
}