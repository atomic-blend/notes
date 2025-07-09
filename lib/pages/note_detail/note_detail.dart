import 'dart:convert';

import 'package:fleather/fleather.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/blocs/note/note_bloc.dart';
import 'package:notes/components/widgets/elevated_container.dart';
import 'package:notes/entities/note/note_entity.dart';
import 'package:notes/entities/sync/patch_change/patch_change.dart';
import 'package:notes/utils/constants.dart';
import 'package:notes/utils/shortcuts.dart';

class NoteDetail extends StatefulWidget {
  final Note? note;
  const NoteDetail({super.key, this.note});

  @override
  State<NoteDetail> createState() => _NoteDetailState();
}

class _NoteDetailState extends State<NoteDetail> {
  NoteBloc? _noteBloc;
  FleatherController? _controller;

  @override
  void initState() {
    super.initState();
    if (widget.note != null) {
      _controller = FleatherController(
        document: ParchmentDocument.fromJson(
          jsonDecode(widget.note!.content ?? "{}"),
        ),
      );
    } else {
      _controller = FleatherController();
    }
  }

  @override
  void didChangeDependencies() {
    _noteBloc = context.read<NoteBloc>();
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _createOrUpdateNote();
    if (_controller != null) {
      _controller!.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: widget.note == null
            ? Text(
                "New note",
                style: getTextTheme(context).titleSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              )
            : Container(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
        child: Column(
          children: [
            if (isDesktop(context))
              FleatherToolbar.basic(controller: _controller!),
            Expanded(
              child: ElevatedContainer(
                padding: EdgeInsets.symmetric(
                  horizontal: $constants.insets.sm,
                  vertical: $constants.insets.sm,
                ),
                child: FleatherEditor(
                  controller: _controller!,
                ),
              ),
            ),
            if (!isDesktop(context)) ...[
              FleatherToolbar.basic(controller: _controller!),
              SizedBox(
                height: $constants.insets.lg,
              ),
            ]
          ],
        ),
      ),
    );
  }

  _createOrUpdateNote() {
    if (_controller == null || _controller!.document.length == 0) {
      // If the controller is null or the document is empty, do not create or update a note
      return;
    }
    if (widget.note == null) {
      // Create a new note
      Note newNote = Note(
        content: jsonEncode(_controller!.document.toJson()),
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );
      _noteBloc!.add(
        AddNote(newNote),
      );
    } else {
      _noteBloc!.add(
        EditNote(widget.note!.id!, [
          PatchChange(
            key: 'content',
            value: jsonEncode(_controller!.document.toJson()),
          ),
        ]),
      );
    }
  }
}
