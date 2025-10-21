import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:notes/entities/note/note_entity.dart';
import 'package:ab_shared/entities/sync/conflicted_item/conflicted_item.dart';
import 'package:ab_shared/entities/sync/item_type/item_type.dart';
import 'package:ab_shared/entities/sync/patch/patch.dart';
import 'package:ab_shared/entities/sync/patch_action/patch_action.dart';
import 'package:ab_shared/entities/sync/patch_change/patch_change.dart';
import 'package:ab_shared/entities/sync/sync_result/sync_result.dart';
import 'package:notes/services/note_service.dart';
import 'package:objectid/objectid.dart';

part 'note_event.dart';
part 'note_state.dart';

class NoteBloc extends HydratedBloc<NoteEvent, NoteState> {
  final NoteService _noteService = NoteService();

  NoteBloc() : super(const NoteInitial()) {
    on<SyncAllNotes>(_onSyncAllNotes);
    on<SyncSince>(_onSyncSince);
    on<AddNote>(_onAddNote);
    on<EditNote>(_onEditNote);
    on<DeleteNote>(_onDeleteNote);
    on<ArchiveNote>(_onArchiveNote);
    on<RestoreNote>(_onRestoreNote);
    on<SyncNotes>(_onSyncNotes);
    on<ForceNotePatch>(_onForceNotePatch);
    on<DiscardNotePatch>(_onDiscardNotePatch);
    on<ClearNotes>(_onClearNotes);
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
        latestSync: json["latestSync"] != null
            ? DateTime.parse(json["latestSync"])
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
        "latestSync": state.latestSync?.toIso8601String(),
      };
    }
    return null;
  }

  void _onSyncAllNotes(SyncAllNotes event, Emitter<NoteState> emit) async {
    final prevState = state;
    emit(NoteLoading(
      notes: prevState.notes,
      stagedPatches: prevState.stagedPatches,
      syncResult: prevState.syncResult,
    ));
    try {
      // Load all pages of notes
      List<Note> allNotes = [];
      int currentPage = 1;
      int totalPages = 1;
      bool hasMorePages = true;

      while (hasMorePages && currentPage <= totalPages) {
        final paginationResult = await _noteService.getAllNotesWithPagination(
            page: currentPage, size: 10);

        final List<Note> pageNotes = paginationResult['notes'] as List<Note>;
        totalPages = paginationResult['total_pages'] as int;

        // Add all notes from this page to our collection
        allNotes.addAll(pageNotes);

        // Check if we have more pages to load
        hasMorePages = currentPage < totalPages;
        currentPage++;

        // Emit intermediate state to show progress
        if (hasMorePages) {
          emit(NoteLoaded(
            notes: allNotes,
            stagedPatches: prevState.stagedPatches ?? [],
            syncResult: prevState.syncResult,
            latestSync: DateTime.now(),
          ));
        }
      }

      // Emit final state with all notes
      emit(NoteLoaded(
        notes: allNotes,
        stagedPatches: prevState.stagedPatches ?? [],
        syncResult: prevState.syncResult,
        latestSync: DateTime.now(),
      ));
    } catch (e) {
      emit(NoteError(
          notes: prevState.notes ?? [],
          stagedPatches: prevState.stagedPatches ?? [],
          syncResult: prevState.syncResult,
          message: e.toString()));
    }
  }

  void _onSyncSince(SyncSince event, Emitter<NoteState> emit) async {
    final prevState = state;
    emit(NoteLoading(
      notes: prevState.notes,
      stagedPatches: prevState.stagedPatches,
      syncResult: prevState.syncResult,
    ));

    try {
      // Load notes since the given date
      List<Note> newNotes = [];
      int currentPage = 1;
      int totalPages = 1;
      bool hasMorePages = true;

      while (hasMorePages && currentPage <= totalPages) {
        final paginationResult = await _noteService.getNotesSince(
            since: prevState.latestSync ?? DateTime.now(),
            page: currentPage,
            size: 10);

        final List<Note> pageNotes = paginationResult['notes'] as List<Note>;
        totalPages = paginationResult['total_pages'] as int;

        // Add all notes from this page to our collection
        newNotes.addAll(pageNotes);

        // Check if we have more pages to load
        hasMorePages = currentPage < totalPages;
        currentPage++;

        // Emit intermediate state to show progress
        if (hasMorePages) {
          final mergedNotes = _mergeNotes(prevState.notes ?? [], newNotes);
          emit(NoteLoaded(
            notes: mergedNotes,
            stagedPatches: prevState.stagedPatches ?? [],
            syncResult: prevState.syncResult,
            latestSync: DateTime.now(),
          ));
        }
      }

      // Merge with existing state
      final mergedNotes = _mergeNotes(prevState.notes ?? [], newNotes);

      // Emit final state with merged notes
      emit(NoteLoaded(
        notes: mergedNotes,
        stagedPatches: prevState.stagedPatches ?? [],
        syncResult: prevState.syncResult,
        latestSync: DateTime.now(),
      ));
    } catch (e) {
      emit(NoteError(
          notes: prevState.notes ?? [],
          stagedPatches: prevState.stagedPatches ?? [],
          syncResult: prevState.syncResult,
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
      final existingPatches = prevState.stagedPatches ?? [];
      final patch = Patch(
        id: ObjectId().hexString,
        action: PatchAction.create,
        patchDate: DateTime.now(),
        itemType: ItemType.note,
        itemId: "",
        changes: [
          PatchChange(
            key: 'data',
            value: event.note,
          ),
        ],
      );
      existingPatches.add(patch);

      final updatedNotes = _applyPatchToState(state: prevState, patch: patch);

      emit(NoteLoaded(
        notes: updatedNotes,
        stagedPatches: existingPatches,
        syncResult: prevState.syncResult,
      ));
      add(const SyncNotes());
    } catch (e) {
      emit(NoteError(
          notes: prevState.notes ?? [],
          stagedPatches: prevState.stagedPatches ?? [],
          syncResult: prevState.syncResult,
          message: e.toString()));
      add(const SyncSince());
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
      final existingPatches = prevState.stagedPatches ?? [];
      final patch = Patch(
        id: ObjectId().hexString,
        action: PatchAction.update,
        patchDate: DateTime.now(),
        itemType: ItemType.note,
        itemId: event.noteId,
        changes: event.changes,
      );
      existingPatches.add(patch);
      final updatedNotes = _applyPatchToState(state: prevState, patch: patch);
      emit(NoteEdited(
        notes: updatedNotes,
        stagedPatches: existingPatches,
        syncResult: prevState.syncResult,
      ));
      add(const SyncNotes());
    } catch (e) {
      emit(NoteError(
          notes: prevState.notes ?? [],
          stagedPatches: prevState.stagedPatches ?? [],
          syncResult: prevState.syncResult,
          message: e.toString()));
      add(const SyncSince());
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
      final existingPatches = prevState.stagedPatches ?? [];
      final patch = Patch(
        id: ObjectId().hexString,
        action: PatchAction.delete,
        patchDate: DateTime.now(),
        itemType: ItemType.note,
        itemId: event.note.id!,
        changes: [],
      );
      existingPatches.add(patch);
      final updatedNotes = _applyPatchToState(state: prevState, patch: patch);
      emit(NoteDeleted(
        notes: updatedNotes,
        stagedPatches: existingPatches,
        syncResult: prevState.syncResult,
      ));
      add(const SyncNotes());
    } catch (e) {
      emit(NoteError(
          notes: prevState.notes ?? [],
          stagedPatches: prevState.stagedPatches ?? [],
          syncResult: prevState.syncResult,
          message: e.toString()));
      add(const SyncAllNotes());
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
      final existingPatches = prevState.stagedPatches ?? [];
      final patch = Patch(
        id: ObjectId().hexString,
        action: PatchAction.update,
        patchDate: DateTime.now(),
        itemType: ItemType.note,
        itemId: event.noteId,
        changes: [
          PatchChange(
            key: 'deleted',
            value: true,
          ),
        ],
      );
      existingPatches.add(patch);
      final updatedNotes = _applyPatchToState(state: prevState, patch: patch);
      emit(NoteArchived(
        notes: updatedNotes,
        stagedPatches: existingPatches,
        syncResult: prevState.syncResult,
      ));
      add(const SyncNotes());
    } catch (e) {
      emit(NoteError(
          notes: prevState.notes ?? [],
          stagedPatches: prevState.stagedPatches ?? [],
          syncResult: prevState.syncResult,
          message: e.toString()));
      add(const SyncSince());
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
      final existingPatches = prevState.stagedPatches ?? [];
      final patch = Patch(
        id: ObjectId().hexString,
        action: PatchAction.update,
        patchDate: DateTime.now(),
        itemType: ItemType.note,
        itemId: event.noteId,
        changes: [
          PatchChange(
            key: 'deleted',
            value: null,
          ),
        ],
      );
      existingPatches.add(patch);
      final updatedNotes = _applyPatchToState(state: prevState, patch: patch);
      emit(NoteLoaded(
        notes: updatedNotes,
        stagedPatches: existingPatches,
        syncResult: prevState.syncResult,
      ));
      add(const SyncNotes());
    } catch (e) {
      emit(NoteError(
          notes: prevState.notes ?? [],
          stagedPatches: prevState.stagedPatches ?? [],
          syncResult: prevState.syncResult,
          message: e.toString()));
      add(const SyncSince());
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
        add(const SyncAllNotes());
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
      add(const SyncAllNotes());
    } catch (e) {
      emit(NoteError(
        notes: prevState.notes ?? [],
        stagedPatches: prevState.stagedPatches,
        syncResult: prevState.syncResult,
        message: e.toString(),
      ));
      add(const SyncSince());
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
      add(const SyncSince());
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
      add(const SyncSince());
    }
  }

  void _onClearNotes(ClearNotes event, Emitter<NoteState> emit) {
    emit(const NoteInitial());
  }

  List<Note> _applyPatchToState(
      {required NoteState state, required Patch patch}) {
    final notes = List<Note>.from(state.notes ?? []);
    final noteIndex = notes.indexWhere((note) => note.id == patch.itemId);

    switch (patch.action) {
      case PatchAction.create:
        if (noteIndex == -1) {
          final newNote = patch.changes.first.value as Note;
          notes.add(newNote);
        }
        break;
      case PatchAction.update:
        if (noteIndex != -1) {
          final note = notes[noteIndex];
          for (var change in patch.changes) {
            note.updateField(change.key, change.value);
          }
        }
        break;
      case PatchAction.delete:
        if (noteIndex != -1) {
          notes.removeAt(noteIndex);
        }
        break;
    }
    return notes;
  }

  List<Note> _mergeNotes(List<Note> existingNotes, List<Note> newNotes) {
    final Map<String, Note> noteMap = {};

    // Add existing notes to map
    for (var note in existingNotes) {
      if (note.id != null) {
        noteMap[note.id!] = note;
      }
    }

    // Add or update with new notes
    for (var note in newNotes) {
      if (note.id != null) {
        noteMap[note.id!] = note;
      }
    }

    return noteMap.values.toList();
  }
}
