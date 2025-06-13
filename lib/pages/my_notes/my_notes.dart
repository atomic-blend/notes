import 'package:collection/collection.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/blocs/note/note_bloc.dart';
import 'package:notes/components/buttons/note_item.dart';
import 'package:notes/components/widgets/elevated_container.dart';
import 'package:notes/i18n/strings.g.dart';
import 'package:notes/utils/constants.dart';
import 'package:notes/utils/shortcuts.dart';

class MyNotes extends StatefulWidget {
  const MyNotes({super.key});

  @override
  State<MyNotes> createState() => _MyNotesState();
}

class _MyNotesState extends State<MyNotes> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteBloc, NoteState>(builder: (context, noteState) {
      final activeNotes =
          noteState.notes?.where((note) => note.deleted != true).toList() ?? [];
      return Padding(
        padding: EdgeInsets.only(
          left: $constants.insets.sm,
          right: $constants.insets.sm,
          bottom: $constants.insets.sm,
        ),
        child: Column(
          children: [
            if (activeNotes.isNotEmpty)
              ...activeNotes.sorted((a, b) {
                if (a.createdAt == null || b.createdAt == null) return 0;
                return b.createdAt!.compareTo(a.createdAt!);
              }).map((note) {
                return Padding(
                  padding: EdgeInsets.only(
                    bottom: $constants.insets.xs,
                      ),
                      child: NoteItem(note: note),
                    );
                  })
            else
              Expanded(
                child: ElevatedContainer(
                  padding: EdgeInsets.all($constants.insets.sm),
                  width: double.infinity,
                  child: Text(
                    "No notes available",
                    style: getTextTheme(context).bodyMedium!.copyWith(
                          color: getTheme(context).onSurface.lighten(40),
                        ),
                  ),
                ),
              ),
          ],
        ),
      );
    });
  }
}
