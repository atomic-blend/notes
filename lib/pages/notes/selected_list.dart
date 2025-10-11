import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:notes/components/buttons/note_item.dart';
import 'package:notes/entities/note/note_entity.dart';
import 'package:notes/pages/note_detail/note_detail.dart';
import 'package:ab_shared/utils/constants.dart';
import 'package:ab_shared/utils/shortcuts.dart';

class SelectedListScreen extends StatelessWidget {
  final List<Note> notes;
  final Function()? onClearSelection;
  final bool? windowed;

  const SelectedListScreen({
    super.key,
    required this.notes,
    this.onClearSelection,
    this.windowed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: windowed == true
          ? AppBar(
              title: Text(
                'Selected Notes (${notes.length})',
                style: getTextTheme(context).titleSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              actions: [
                IconButton(
                  onPressed: onClearSelection,
                  icon: Icon(
                    Icons.clear,
                    color: getTheme(context).onSurface.lighten(40),
                  ),
                ),
              ],
            )
          : null,
      body: Column(
        children: [
          if (windowed != true) ...[
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: $constants.insets.sm,
                vertical: $constants.insets.xs,
              ),
              decoration: BoxDecoration(
                color: getTheme(context).surfaceContainer,
                borderRadius: BorderRadius.circular($constants.corners.sm),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Selected Notes (${notes.length})',
                      style: getTextTheme(context).titleMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  IconButton(
                    onPressed: onClearSelection,
                    icon: Icon(
                      Icons.clear,
                      color: getTheme(context).onSurface.lighten(40),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: $constants.insets.xs),
          ],
          Expanded(
            child: ListView.builder(
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
                  child: GestureDetector(
                    onTap: () {
                      if (isDesktop(context)) {
                        showDialog(
                          context: context,
                          builder: (context) => NoteDetail(note: note),
                        );
                      } else {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          builder: (context) => NoteDetail(note: note),
                        );
                      }
                    },
                    child: NoteItem(
                      note: note,
                      deleteEnabled: true,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
