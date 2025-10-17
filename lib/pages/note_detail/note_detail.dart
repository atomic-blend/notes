import 'dart:convert';

import 'package:ab_shared/components/modals/ab_modal.dart';
import 'package:fleather/fleather.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/blocs/note/note_bloc.dart';
import 'package:notes/entities/note/note_entity.dart';
import 'package:ab_shared/entities/sync/patch_change/patch_change.dart';
import 'package:notes/i18n/strings.g.dart';
import 'package:notes/pages/sync/conflict_resolver.dart';
import 'package:ab_shared/utils/constants.dart';
import 'package:ab_shared/utils/shortcuts.dart';
import 'package:notes/services/sync.service.dart';

class NoteDetail extends StatefulWidget {
  final Note? note;
  final Widget? leading;
  const NoteDetail({super.key, this.note, this.leading});

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
    SyncService.sync(context);
  }

  @override
  void didUpdateWidget(NoteDetail oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.note != oldWidget.note) {
      _controller = FleatherController(
        document: ParchmentDocument.fromJson(
          jsonDecode(widget.note!.content ?? "{}"),
        ),
      );
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
    final body = MouseRegion(
      onExit: (event) => _createOrUpdateNote(),
      child: BlocBuilder<NoteBloc, NoteState>(builder: (context, noteState) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          _checkIfNoteIsConflicted(context, noteState);
        });
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
          child: Column(
            children: [
              if (isDesktop(context))
                Row(
                  children: [
                    widget.leading ?? Container(),
                    Flexible(
                        child: FleatherToolbar.basic(controller: _controller!)),
                  ],
                ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: $constants.insets.xs,
                    vertical: $constants.insets.sm,
                  ),
                  child: FleatherEditor(
                    controller: _controller!,
                  ),
                ),
              ),
              if (!isDesktop(context)) ...[
                Row(
                  children: [
                    widget.leading ?? Container(),
                    FleatherToolbar.basic(controller: _controller!),
                  ],
                ),
                SizedBox(
                  height: $constants.insets.lg,
                ),
              ]
            ],
          ),
        );
      }),
    );

    if (!isDesktop(context)) {
      return _wrapScaffold(body);
    }
    return body;
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

  _checkIfNoteIsConflicted(BuildContext context, NoteState taskState) async {
    final patches = taskState.stagedPatches
        ?.where((element) => element.itemId == widget.note?.id)
        .toList();
    for (var patch in patches ?? []) {
      final conflicts = taskState.syncResult?.conflicts
          .where((element) => element.patchId == patch.id)
          .toList();
      if (conflicts != null && conflicts.isNotEmpty) {
        final result = await showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) => ABModal(
                  title: context.t.conflict_detected_modal.title,
                  description: context.t.conflict_detected_modal.description,
                  warning: context.t.conflict_detected_modal.warning,
                  confirmText: context.t.conflict_detected_modal.resolve_now,
                  confirmColor: getTheme(context).primary,
                  cancelText: context.t.conflict_detected_modal.later,
                  cancelColor: getTheme(context).surfaceContainer,
                ));
        if (!context.mounted) return;
        if (result == true) {
          Future.delayed(Duration.zero, () {
            if (context.mounted) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ConflictResolver()));
            }
          });
        }
        Navigator.pop(context);
      }
    }
  }

  Widget _wrapScaffold(Widget child) {
    return Scaffold(
      body: child,
    );
  }
}
