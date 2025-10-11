import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ab_shared/components/widgets/elevated_container.dart';
import 'package:ab_shared/utils/constants.dart';
import 'package:ab_shared/utils/shortcuts.dart';

class NoNoteSelectedScreen extends StatelessWidget {
  final IconData icon;
  final String title;
  final int numberOfNotes;

  const NoNoteSelectedScreen({
    super.key,
    required this.icon,
    required this.title,
    required this.numberOfNotes,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all($constants.insets.lg),
      child: Center(
        child: ElevatedContainer(
          padding: EdgeInsets.all($constants.insets.xl),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: 64,
                color: getTheme(context).onSurface.lighten(40),
              ),
              SizedBox(height: $constants.insets.md),
              Text(
                title,
                style: getTextTheme(context).headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: $constants.insets.sm),
              Text(
                numberOfNotes == 0
                    ? 'No notes available'
                    : '$numberOfNotes note${numberOfNotes == 1 ? '' : 's'} available',
                style: getTextTheme(context).bodyMedium!.copyWith(
                      color: getTheme(context).onSurface.lighten(40),
                    ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: $constants.insets.md),
              Text(
                'Select a note from the list to view its details',
                style: getTextTheme(context).bodySmall!.copyWith(
                      color: getTheme(context).onSurface.lighten(60),
                    ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
