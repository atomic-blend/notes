import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:notes/entities/note/note_entity.dart';
import 'package:notes/entities/sync/conflicted_item/conflicted_item.dart';
import 'package:notes/entities/sync/patch/patch.dart';
import 'package:notes/entities/sync/sync_result/sync_result.dart';
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
    on<ArchiveNote>(_onArchiveNote);
    on<RestoreNote>(_onRestoreNote);
    on<SyncNotes>(_onSyncNotes);
    on<ForceNotePatch>(_onForceNotePatch);
    on<DiscardNotePatch>(_onDiscardNotePatch);
  }

  @override
  NoteState? fromJson(Map<String, dynamic> json) {
    if (json["notes"] != null) {
      return NoteLoaded(
        notes: (json["notes"] as List).map((e) => Note.fromJson(e)).toList(),
        stagedPatches: (json["stagedPatches"] as List?)
                ?.map((e) => Patch.fromJson(e))
                .toList() ??
            [],
        syncResult: json["syncResult"] != null
            ? SyncResult.fromJson(json["syncResult"])
            : null,
      );
    }
    return const NoteInitial();
  }

  @override
  Map<String, dynamic>? toJson(NoteState state) {
    if (state is NoteLoaded) {
      return {
        "notes": (state.notes ?? []).map((e) => e.toJson()).toList(),
        "stagedPatches":
            (state.stagedPatches ?? []).map((e) => e.toJson()).toList(),
        "syncResult": state.syncResult?.toJson(),
      };
    }
    return null;
  }

  void _onLoadNotes(LoadNotes event, Emitter<NoteState> emit) async {
    final prevState = state;
    emit(NoteLoading(
      notes: prevState.notes,
      stagedPatches: prevState.stagedPatches,
      syncResult: prevState.syncResult,
    ));
    try {
      final notes = await _noteService.getNotes();
      emit(NoteLoaded(
          notes: notes,
          stagedPatches: prevState.stagedPatches ?? [],
          syncResult: prevState.syncResult));
    } catch (e) {
      emit(NoteError(
          notes: prevState.notes ?? [],
          stagedPatches: prevState.stagedPatches ?? [],
          message: e.toString()));
    }
  }

  void _onAddNote(AddNote event, Emitter<NoteState> emit) async {
    final prevState = state;
    emit(NoteCreating(
      notes: prevState.notes,
      stagedPatches: prevState.stagedPatches,
      syncResult: prevState.syncResult,
    ));
    try {
      await _noteService.createNote(event.note);
      add(const LoadNotes());
    } catch (e) {
      emit(NoteError(
          notes: prevState.notes ?? [],
          stagedPatches: prevState.stagedPatches ?? [],
          syncResult: prevState.syncResult,
          message: e.toString()));
      add(const LoadNotes());
    }
  }

  void _onEditNote(EditNote event, Emitter<NoteState> emit) async {
    final prevState = state;
    emit(NoteUpdating(
      notes: prevState.notes,
      stagedPatches: prevState.stagedPatches,
      syncResult: prevState.syncResult,
    ));
    try {
      await _noteService.updateNote(event.note);
      add(const LoadNotes());
    } catch (e) {
      emit(NoteError(
          notes: prevState.notes ?? [],
          stagedPatches: prevState.stagedPatches ?? [],
          syncResult: prevState.syncResult,
          message: e.toString()));
      add(const LoadNotes());
    }
  }

  void _onDeleteNote(DeleteNote event, Emitter<NoteState> emit) async {
    final prevState = state;
    emit(NoteDeleting(
      notes: prevState.notes,
      stagedPatches: prevState.stagedPatches,
      syncResult: prevState.syncResult,
    ));
    try {
      await _noteService.deleteNote(event.note);
      add(const LoadNotes());
    } catch (e) {
      emit(NoteError(
          notes: prevState.notes ?? [],
          stagedPatches: prevState.stagedPatches ?? [],
          syncResult: prevState.syncResult,
          message: e.toString()));
      add(const LoadNotes());
    }
  }

  void _onArchiveNote(ArchiveNote event, Emitter<NoteState> emit) async {
    final prevState = state;
    emit(NoteArchiving(
      notes: prevState.notes,
      stagedPatches: prevState.stagedPatches,
      syncResult: prevState.syncResult,
    ));
    try {
      event.note.deleted = true;
      await _noteService.updateNote(event.note);
      emit(NoteArchived(
        notes: prevState.notes,
        stagedPatches: prevState.stagedPatches,
        syncResult: prevState.syncResult,
      ));
      add(const LoadNotes());
    } catch (e) {
      emit(NoteError(
          notes: prevState.notes ?? [],
          stagedPatches: prevState.stagedPatches ?? [],
          syncResult: prevState.syncResult,
          message: e.toString()));
      add(const LoadNotes());
    }
  }

  void _onRestoreNote(RestoreNote event, Emitter<NoteState> emit) async {
    final prevState = state;
    emit(NoteRestoring(
      notes: prevState.notes,
      stagedPatches: prevState.stagedPatches,
      syncResult: prevState.syncResult,
    ));
    try {
      event.note.deleted = null;
      await _noteService.updateNote(event.note);
      emit(NoteRestored(
        notes: prevState.notes,
        stagedPatches: prevState.stagedPatches,
        syncResult: prevState.syncResult,
      ));
      add(const LoadNotes());
    } catch (e) {
      emit(NoteError(
          notes: prevState.notes ?? [],
          stagedPatches: prevState.stagedPatches ?? [],
          syncResult: prevState.syncResult,
          message: e.toString()));
      add(const LoadNotes());
    }
  }

  FutureOr<void> _onSyncNotes(SyncNotes event, Emitter<NoteState> emit) async {
    final prevState = state;
    emit(
      NoteSyncInProgress(
        notes: prevState.notes ?? [],
        stagedPatches: prevState.stagedPatches,
        syncResult: prevState.syncResult,
      ),
    );
    try {
      if (prevState.notes == null) {
        add(const LoadNotes());
        return;
      }
      final syncResult = await _noteService.patchNotes(
        prevState.stagedPatches ?? [],
      );

      final newConflictList = <ConflictedItem>[];
      newConflictList.addAll(syncResult.conflicts);

      final newPatchList = List<Patch>.from(prevState.stagedPatches ?? []);
      newPatchList
          .removeWhere((patch) => syncResult.success.contains(patch.id));

      emit(NoteSyncSuccess(
        notes: prevState.notes ?? [],
        syncResult: syncResult,
        stagedPatches: newPatchList,
      ));
      add(const LoadNotes());
    } catch (e) {
      emit(NoteError(
        notes: prevState.notes ?? [],
        stagedPatches: prevState.stagedPatches,
        syncResult: prevState.syncResult,
        message: e.toString(),
      ));
      add(const LoadNotes());
    }
  }

  FutureOr<void> _onForceNotePatch(
      ForceNotePatch event, Emitter<NoteState> emit) async {
    final prevState = state;
    emit(NoteLoading(
      notes: prevState.notes,
      stagedPatches: prevState.stagedPatches,
      syncResult: prevState.syncResult,
    ));
    try {
      final existingPatches = prevState.stagedPatches ?? [];
      final patchIndex =
          existingPatches.indexWhere((p) => p.id == event.patch.id);
      if (patchIndex != -1) {
        existingPatches[patchIndex].force = true;
      } else {
        event.patch.force = true;
        existingPatches.add(event.patch);
      }
      emit(NoteEdited(
        notes: prevState.notes ?? [],
        stagedPatches: existingPatches,
        syncResult: prevState.syncResult,
      ));
      add(const SyncNotes());
    } catch (e) {
      emit(NoteError(
        notes: prevState.notes ?? [],
        stagedPatches: prevState.stagedPatches,
        syncResult: prevState.syncResult,
        message: e.toString(),
      ));
      add(const LoadNotes());
    }
  }

  FutureOr<void> _onDiscardNotePatch(
      DiscardNotePatch event, Emitter<NoteState> emit) async {
    final prevState = state;
    emit(NoteLoading(
      notes: prevState.notes,
      stagedPatches: prevState.stagedPatches,
      syncResult: prevState.syncResult,
    ));
    try {
      final existingPatches = prevState.stagedPatches ?? [];
      existingPatches.removeWhere((p) => p.id == event.patch.id);
      emit(NoteEdited(
        notes: prevState.notes ?? [],
        stagedPatches: existingPatches,
        syncResult: prevState.syncResult,
      ));
    } catch (e) {
      emit(NoteError(
        notes: prevState.notes ?? [],
        stagedPatches: prevState.stagedPatches,
        syncResult: prevState.syncResult,
        message: e.toString(),
      ));
      add(const LoadNotes());
    }
  }
}
