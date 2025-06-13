import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:notes/components/widgets/elevated_container.dart';
import 'package:notes/entities/note/note_entity.dart';
import 'package:notes/pages/note_detail/note_detail.dart';
import 'package:notes/utils/constants.dart';
import 'package:notes/utils/shortcuts.dart';

class NoteItem extends StatelessWidget {
  final Note note;
  const NoteItem({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => NoteDetail(note: note)));
      },
      child: ElevatedContainer(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: $constants.insets.sm,
          vertical: $constants.insets.xs,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 20,
              child: Text(
                note.displayTitle,
                style: getTextTheme(context).headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            SizedBox(
              height: $constants.insets.xxs,
            ),
            Row(
              children: [
                SizedBox(
                  height: 20,
                  child: Text(
                    note.creationDate,
                    style: getTextTheme(context).bodyMedium!.copyWith(
                          color: getTheme(context).onSurface.lighten(40),
                        ),
                  ),
                ),
                SizedBox(
                  width: $constants.insets.xxs,
                ),
                SizedBox(
                  height: 20,
                  child: Text(
                    note.description,
                    style: getTextTheme(context).bodyMedium!.copyWith(
                          color: getTheme(context).onSurface.lighten(40),
                        ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
