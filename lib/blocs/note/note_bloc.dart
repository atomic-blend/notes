import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:notes/entities/note/note_entity.dart';
import 'package:notes/services/note_service.dart';

part 'note_event.dart';
part 'note_state.dart';

class NoteBloc extends HydratedBloc<NoteEvent, NoteState> {
  final NoteService _noteService = NoteService();

  NoteBloc() : super(const NoteInitial()) {
    on<LoadNotes>(_onLoadNotes);
    on<AddNote>(_onAddNote);
    on<EditNote>(_onEditNote);
    on<DeleteNote>(_onDeleteNote);
  }

  @override
  NoteState? fromJson(Map<String, dynamic> json) {
    if (json["notes"] != null) {
      return NoteLoaded(
        (json["notes"] as List).map((e) => Note.fromJson(e)).toList(),
      );
    }
    return const NoteInitial();
  }

  @override
  Map<String, dynamic>? toJson(NoteState state) {
    if (state is NoteLoaded) {
      return {
        "notes": (state.notes ?? []).map((e) => e.toJson()).toList(),
      };
    }
    return null;
  }

  void _onLoadNotes(LoadNotes event, Emitter<NoteState> emit) async {
    final prevState = state;
    emit(NoteLoading(prevState.notes));
    try {
      final notes = await _noteService.getNotes();
      emit(NoteLoaded(notes));
    } catch (e) {
      emit(NoteError(prevState.notes ?? [], e.toString()));
    }
  }

  void _onAddNote(AddNote event, Emitter<NoteState> emit) async {
    final prevState = state;
    emit(NoteCreating(
      prevState.notes,
    ));
    try {
      await _noteService.createNote(event.note);
      add(const LoadNotes());
    } catch (e) {
      emit(NoteError(prevState.notes ?? [], e.toString()));
      add(const LoadNotes());
    }
  }

  void _onEditNote(EditNote event, Emitter<NoteState> emit) async {
    final prevState = state;
    emit(NoteUpdating(prevState.notes));
    try {
      await _noteService.updateNote(event.note);
      add(const LoadNotes());
    } catch (e) {
      emit(NoteError(prevState.notes ?? [], e.toString()));
      add(const LoadNotes());
    }
  }

  void _onDeleteNote(DeleteNote event, Emitter<NoteState> emit) async {
    final prevState = state;
    emit(NoteDeleting(prevState.notes));
    try {
      await _noteService.deleteNote(event.note);
      add(const LoadNotes());
    } catch (e) {
      emit(NoteError(prevState.notes ?? [], e.toString()));
      add(const LoadNotes());
    }
  }
}
