import 'package:flutter/material.dart';
import 'package:notes/entities/note/note_entity.dart';
import 'package:ab_shared/utils/constants.dart';
import 'package:ab_shared/utils/shortcuts.dart';

class SelectedNotesToastNotification extends StatelessWidget {
  final List<Note> notes;

  const SelectedNotesToastNotification({
    super.key,
    required this.notes,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: $constants.insets.sm,
        vertical: $constants.insets.xs,
      ),
      decoration: BoxDecoration(
        color: getTheme(context).primary,
        borderRadius: BorderRadius.circular($constants.corners.sm),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.check_circle,
            color: getTheme(context).onPrimary,
            size: 20,
          ),
          SizedBox(width: $constants.insets.xs),
          Text(
            '${notes.length} note${notes.length == 1 ? '' : 's'} selected',
            style: getTextTheme(context).bodyMedium!.copyWith(
                  color: getTheme(context).onPrimary,
                  fontWeight: FontWeight.w500,
                ),
          ),
          SizedBox(width: $constants.insets.xs),
          Icon(
            Icons.arrow_forward_ios,
            color: getTheme(context).onPrimary,
            size: 16,
          ),
        ],
      ),
    );
  }
}
