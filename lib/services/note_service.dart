import 'package:notes/entities/note/note_entity.dart';
import 'package:notes/services/user.service.dart';
import 'package:notes/utils/api_client.dart';

class NoteService {
  static Future<List<Note>> getNotes() async {
    final result = await globalApiClient.get('/notes');
    if (result.statusCode == 200) {
      final List<Note> notes = [];
      for (var note in (result.data ?? [])) {
        final decryptedNote = await Note.decrypt(
          note as Map<String, dynamic>,
          encryptionService!,
        );
        notes.add(decryptedNote);
      }
      return notes;
    } else {
      throw Exception('notes_fetch_failed');
    }
  }

  static Future<bool> createNote(Note note) async {
    final encryptedNote = await note.encrypt(encryptionService: encryptionService!);
    final result = await globalApiClient.post('/notes', data: encryptedNote);
    if (result.statusCode == 201) {
      return true;
    } else {
      throw Exception('note_create_failed');
    }
  }

  static Future<bool> updateNote(Note note) async {
    final encryptedNote = await note.encrypt(encryptionService: encryptionService!);
    final result = await globalApiClient.put('/notes/${note.id}', data: encryptedNote);
    if (result.statusCode == 200) {
      return true;
    } else {
      throw Exception('note_update_failed');
    }
  }

  static Future<bool> deleteNote(Note note) async {
    final result = await globalApiClient.delete('/notes/${note.id}');
    if (result.statusCode == 204) {
      return true;
    } else {
      throw Exception('note_delete_failed');
    }
  }
}