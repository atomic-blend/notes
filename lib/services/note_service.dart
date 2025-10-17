import 'package:notes/entities/note/note_entity.dart';
import 'package:ab_shared/entities/sync/conflicted_item/conflicted_item.dart';
import 'package:ab_shared/entities/sync/item_type/item_type.dart';
import 'package:ab_shared/entities/sync/patch/patch.dart';
import 'package:ab_shared/entities/sync/patch_action/patch_action.dart';
import 'package:ab_shared/entities/sync/patch_change/patch_change.dart';
import 'package:ab_shared/entities/sync/patch_error/patch_error.dart';
import 'package:ab_shared/entities/sync/sync_result/sync_result.dart';
import 'package:ab_shared/utils/api_client.dart';
import 'package:ab_shared/services/encryption.service.dart';
import 'package:get_it/get_it.dart';

class NoteService {
  final getIt = GetIt.instance;
  late final ApiClient globalApiClient;
  late final EncryptionService encryptionService;

  NoteService() {
    globalApiClient = getIt<ApiClient>();
    encryptionService = getIt<EncryptionService>();
  }

  Future<List<Note>> getNotes() async {
    final result = await globalApiClient.get('/notes');
    if (result.statusCode == 200) {
      final List<Note> notes = [];
      for (var note in (result.data ?? [])) {
        final decryptedNote = await Note.decrypt(
          note as Map<String, dynamic>,
          encryptionService,
        );
        notes.add(decryptedNote);
      }
      return notes;
    } else {
      throw Exception('notes_fetch_failed');
    }
  }

  Future<Map<String, dynamic>> getAllNotesWithPagination(
      {int page = 1, int size = 10}) async {
    final result = await globalApiClient.get('/notes/?page=$page&size=$size');
    if (result != null && result.statusCode == 200) {
      final List<Note> decryptedNotes = [];
      final notes = result.data["notes"];

      for (var note in (notes ?? [])) {
        final decryptedNote =
            await Note.decrypt(note as Map<String, dynamic>, encryptionService);
        decryptedNotes.add(decryptedNote);
      }

      return {
        'notes': decryptedNotes,
        'total_count': result.data['total_count'],
        'page': result.data['page'],
        'size': result.data['size'],
        'total_pages': result.data['total_pages'],
      };
    } else {
      throw Exception('Failed to load notes');
    }
  }

  Future<Map<String, dynamic>> getNotesSince({
    required DateTime since,
    int page = 1,
    int size = 10,
  }) async {
    final sinceFormatted =
        since.toUtc().toIso8601String().replaceAll('.000Z', 'Z');
    final result = await globalApiClient
        .get('/notes/since?since=$sinceFormatted&page=$page&size=$size');

    if (result != null && result.statusCode == 200) {
      final List<Note> decryptedNotes = [];
      final notes = result.data["notes"];

      for (var note in (notes ?? [])) {
        final decryptedNote =
            await Note.decrypt(note as Map<String, dynamic>, encryptionService);
        decryptedNotes.add(decryptedNote);
      }

      return {
        'notes': decryptedNotes,
        'total_count': result.data['total_count'],
        'page': result.data['page'],
        'size': result.data['size'],
        'total_pages': result.data['total_pages'],
      };
    } else {
      throw Exception('Failed to load notes since $sinceFormatted');
    }
  }

  Future<bool> createNote(Note note) async {
    final encryptedNote =
        await note.encrypt(encryptionService: encryptionService);
    final result = await globalApiClient.post('/notes', data: encryptedNote);
    if (result.statusCode == 201) {
      return true;
    } else {
      throw Exception('note_create_failed');
    }
  }

  Future<bool> updateNote(Note note) async {
    final encryptedNote =
        await note.encrypt(encryptionService: encryptionService);
    final result =
        await globalApiClient.put('/notes/${note.id}', data: encryptedNote);
    if (result.statusCode == 200) {
      return true;
    } else {
      throw Exception('note_update_failed');
    }
  }

  Future<bool> deleteNote(Note note) async {
    final result = await globalApiClient.delete('/notes/${note.id}');
    if (result.statusCode == 204) {
      return true;
    } else {
      throw Exception('note_delete_failed');
    }
  }

  Future<SyncResult> patchNotes(List<Patch> patches,
      {int batchSize = 10}) async {
    final eligiblePatches =
        patches.where((patch) => patch.itemType == ItemType.note).toList();

    if (eligiblePatches.isEmpty) {
      return SyncResult(
        success: [],
        conflicts: [],
        errors: [],
        date: DateTime.now(),
      );
    }

    final List<String> success = [];
    final List<ConflictedItem> conflicts = [];
    final List<PatchError> errors = [];

    for (var i = 0; i < eligiblePatches.length; i += batchSize) {
      final batch = eligiblePatches.sublist(
        i,
        (i + batchSize < eligiblePatches.length)
            ? i + batchSize
            : eligiblePatches.length,
      );

      try {
        final List<Patch> encryptedPatches = [];

        for (var patch in batch) {
          // Create a copy of the patch to avoid modifying the original
          final encryptedPatch = Patch(
            id: patch.id,
            itemType: patch.itemType,
            itemId: patch.itemId,
            action: patch.action,
            changes: [],
            patchDate: patch.patchDate,
            force: patch.force,
          );

          if (patch.action == PatchAction.update) {
            for (var change in patch.changes) {
              final encryptedChange = PatchChange(
                key: change.key,
                value: change.value,
              );
              // if key is not part of nonEncryptedFields, encrypt it
              if (!Note.nonEncryptedFields.contains(change.key) &&
                  change.value != null) {
                encryptedChange.value =
                    await encryptionService.encryptJson(change.value);
              }
              encryptedPatch.changes.add(encryptedChange);
            }
          } else if (patch.action == PatchAction.create) {
            final data = patch.changes.first.value;
            final encryptedChange = PatchChange(
              key: patch.changes.first.key,
              value: patch.changes.first.value,
            );
            if (data is! Map) {
              final note = patch.changes.first.value as Note;
              final encryptedNote =
                  await note.encrypt(encryptionService: encryptionService);
              encryptedChange.value = encryptedNote;
            }
            encryptedPatch.changes.add(encryptedChange);
          } else {
            // For other actions (like delete), copy changes as-is
            for (var change in patch.changes) {
              encryptedPatch.changes.add(PatchChange(
                key: change.key,
                value: change.value,
              ));
            }
          }

          encryptedPatches.add(encryptedPatch);
        }

        final result = await globalApiClient.post(
          '/notes/patch',
          data: encryptedPatches.map((e) => e.toJson()).toList(),
        );

        if (result.statusCode == 200) {
          final responseData = result.data as Map<String, dynamic>;
          final syncResult = SyncResult.fromJson(responseData);
          success.addAll(syncResult.success);
          conflicts.addAll(syncResult.conflicts);
          errors.addAll(syncResult.errors);
        } else {
          throw Exception('patch_notes_failed');
        }
      } catch (e) {
        for (var patch in batch) {
          errors.add(PatchError(
            patchId: patch.id,
            errorCode: e.toString(),
          ));
        }
      }
    }

    return SyncResult(
      success: success,
      conflicts: conflicts,
      errors: errors,
      date: DateTime.now(),
    );
  }
}
