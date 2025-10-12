import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ab_shared/services/encryption.service.dart';

part 'note_entity.freezed.dart';
part 'note_entity.g.dart';

@unfreezed
class Note with _$Note {
  Note._();
  factory Note({
    String? id,
    String? title,
    String? content,
    bool? deleted,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Note;

  static final nonEncryptedFields = [
    'id',
    'createdAt',
    'updatedAt',
    'user',
    'deleted'
  ];

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
      'deleted': deleted,
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
      // Get first line (stop before first \n) or 30 chars
      final firstLine = title!.split('\n').first.trim();
      if (firstLine.length > 30) {
        final truncated = firstLine.substring(0, 30);
        return '$truncated...';
      }
      return firstLine;
    } else if (content != null && content!.isNotEmpty) {
      final parsedContent = jsonDecode(content!);
      final firstBlockContent =
          (parsedContent[0] as Map<String, dynamic>).values.first;
      // Get first line (stop before first \n) or 30 chars
      final firstLine = firstBlockContent.split('\n').first.trim();
      if (firstLine.length > 30) {
        final truncated = firstLine.substring(0, 30);
        return '$truncated...';
      }
      return firstLine;
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
    if (content == null || content!.isEmpty) {
      return "";
    }

    try {
      final parsedContent = jsonDecode(content!);
      if (parsedContent.isEmpty) return "";

      // Get the first block content
      final firstBlockContent =
          (parsedContent[0] as Map<String, dynamic>).values.first;

      // Split into lines
      final lines = firstBlockContent.split('\n');

      // If there's a second line, use it
      if (lines.length > 1) {
        final secondLine = lines[1].trim();
        return secondLine.isEmpty ? "" : secondLine;
      }

      // Otherwise, get chars 30-60 from the content
      if (firstBlockContent.length > 30) {
        const startIndex = 30;
        final endIndex = (startIndex + 30).clamp(0, firstBlockContent.length);
        final result = firstBlockContent.substring(startIndex, endIndex).trim();
        return result.isEmpty
            ? ""
            : (endIndex < firstBlockContent.length ? '$result...' : result);
      }

      return "";
    } catch (e) {
      return "";
    }
  }

  void updateField(String key, dynamic value) {
    switch (key) {
      case 'id':
        id = value as String?;
        break;
      case 'title':
        title = value as String?;
        break;
      case 'content':
        content = value as String?;
        break;
      case 'deleted':
        deleted = value as bool?;
        break;
      case 'createdAt':
        createdAt = DateTime.parse(value as String);
        break;
      case 'updatedAt':
        updatedAt = DateTime.parse(value as String);
        break;
    }
  }
}
