import 'dart:convert';

import 'package:fleather/fleather.dart';
import 'package:flutter/material.dart';
import 'package:notes/entities/note/note_entity.dart';

class NotesDetailCard extends StatelessWidget {
  final String? content;
  final Note? note;
  const NotesDetailCard({super.key, this.note, this.content});

  @override
  Widget build(BuildContext context) {
    String noteContent = content ?? note?.content ?? '';
    return FleatherEditor(
        readOnly: true,
        controller: FleatherController(
            document: ParchmentDocument.fromJson(json.decode(noteContent))));
  }
}
