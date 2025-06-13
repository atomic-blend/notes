import 'package:fleather/fleather.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:notes/components/widgets/elevated_container.dart';
import 'package:notes/entities/note/note_entity.dart';
import 'package:notes/utils/constants.dart';
import 'package:notes/utils/shortcuts.dart';

class NoteDetail extends StatefulWidget {
  final Note? note;
  const NoteDetail({super.key, this.note});

  @override
  State<NoteDetail> createState() => _NoteDetailState();
}

class _NoteDetailState extends State<NoteDetail> {
  FleatherController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = FleatherController();
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
}
