import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notes/services/encryption.service.dart';

part 'note_entity.freezed.dart';
part 'note_entity.g.dart';

@unfreezed
class Note with _$Note {
  Note._();
  factory Note({
    String? id,
    String? title,
    String? content,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Note;

  static final nonEncryptedFields = ['id', 'createdAt', 'updatedAt', 'user'];

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);

  @override
  String toString() {
    return 'Note { id: $id, title: $title, content: $content, created_at: $createdAt, updated_at: $updatedAt }';
  }

  Future<Map<String, dynamic>> encrypt(
      {required EncryptionService encryptionService}) async {
    Map<String, dynamic> encryptedData = {
      'id': id,
      'title': await encryptionService.encryptJson(title),
      'content': await encryptionService.encryptJson(content),
      'createdAt': createdAt?.toUtc().toIso8601String(),
      'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
    return encryptedData;
  }

  static Future<Note> decrypt(
      Map<String, dynamic> data, EncryptionService encryptionService) async {
    Map<String, dynamic> decryptedData = {};

    for (var entry in data.entries) {
      if (nonEncryptedFields.contains(entry.key)) {
        decryptedData[entry.key] = entry.value;
      } else {
        decryptedData[entry.key] =
            await encryptionService.decryptJson(entry.value);
      }
    }

    return Note.fromJson(decryptedData);
  }

  String get displayTitle {
    if (title != null && title!.isNotEmpty) {
      return title!;
    } else if (content != null && content!.isNotEmpty) {
      final parsedContent = jsonDecode(content!);
      final firstBlockContent =
          (parsedContent[0] as Map<String, dynamic>).values.first;
      return firstBlockContent.length > 30
          ? '${firstBlockContent.substring(0, 30)}...'
          : firstBlockContent;
    } else {
      return 'Untitled Note';
    }
  }

  String get creationDate {
    return createdAt != null
        ? '${createdAt!.day}/${createdAt!.month}/${createdAt!.year}'
        : '';
  }

  String get description {
    final parsedContent = jsonDecode(content!);
    final Map<String, dynamic> second = parsedContent.isNotEmpty && parsedContent.length > 1
        ? parsedContent[1] as Map<String, dynamic>
        : {};
    final firstBlockContent =
        second.values.firstOrNull ?? "";
    if (firstBlockContent.isEmpty) {
      return "";
    }
    return firstBlockContent.length > 30
        ? '${firstBlockContent.substring(0, 30)}...'
        : firstBlockContent;
  }
}
