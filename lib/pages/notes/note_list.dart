import 'package:flutter/material.dart';
import 'package:notes/components/buttons/note_card.dart';
import 'package:notes/entities/note/note_entity.dart';
import 'package:ab_shared/utils/constants.dart';

class NoteList extends StatelessWidget {
  final List<Note> notes;
  final Function(Note)? onSelect;
  final Function(Note)? onDeselect;
  final List<Note> selectedNotes;
  final bool? isSelecting;
  final Function(bool)? setIsSelecting;

  const NoteList({
    super.key,
    required this.notes,
    this.onSelect,
    this.onDeselect,
    required this.selectedNotes,
    this.isSelecting,
    this.setIsSelecting,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(
        horizontal: $constants.insets.sm,
        vertical: $constants.insets.xs,
      ),
      itemCount: notes.length,
      itemBuilder: (context, index) {
        final note = notes[index];

        return Padding(
          padding: EdgeInsets.only(
            bottom: $constants.insets.xs,
          ),
          child: NoteCard(
            note: note,
            deleteEnabled: note.deleted != true,
            restoreEnabled: note.deleted == true,
            onSelect: onSelect,
            onDeselect: onDeselect,
            selectedNotes: selectedNotes,
            selectMode: isSelecting,
            setSelectMode: setIsSelecting,
          ),
        );
      },
    );
  }
}
