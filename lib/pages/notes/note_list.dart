import 'package:flutter/material.dart';
import 'package:notes/components/buttons/note_item.dart';
import 'package:notes/entities/note/note_entity.dart';
import 'package:ab_shared/utils/constants.dart';
import 'package:ab_shared/utils/shortcuts.dart';

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
        final isSelected = selectedNotes.contains(note);

        return Padding(
          padding: EdgeInsets.only(
            bottom: $constants.insets.xs,
          ),
          child: GestureDetector(
            onTap: () {
              if (isSelecting == true) {
                if (isSelected) {
                  onDeselect?.call(note);
                } else {
                  onSelect?.call(note);
                }
              } else {
                // Navigate to note detail or open note
                // This would typically navigate to the note detail screen
              }
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular($constants.corners.sm),
                border: isSelecting == true && isSelected
                    ? Border.all(
                        color: getTheme(context).primary,
                        width: 2,
                      )
                    : null,
              ),
              child: NoteItem(
                note: note,
                deleteEnabled: true,
              ),
            ),
          ),
        );
      },
    );
  }
}
