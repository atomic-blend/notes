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

final class ArchiveNote extends NoteEvent {
  const ArchiveNote(this.note);
  final Note note;
}

final class RestoreNote extends NoteEvent {
  const RestoreNote(this.note);
  final Note note;
}

final class DeleteNote extends NoteEvent {
  const DeleteNote(this.note);
  final Note note;
}

final class SyncNotes extends NoteEvent {
  const SyncNotes();
}

final class ForceNotePatch extends NoteEvent {
  const ForceNotePatch(this.patch);
  final Patch patch;
}

final class DiscardNotePatch extends NoteEvent {
  const DiscardNotePatch(this.patch);
  final Patch patch;
}
