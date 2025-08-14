import 'package:notes/blocs/note/note_bloc.dart';
import 'package:ab_shared/components/widgets/elevated_container.dart';
import 'package:notes/i18n/strings.g.dart';
import 'package:notes/pages/sync/conflict_resolver.dart';
import 'package:ab_shared/utils/constants.dart';
import 'package:ab_shared/utils/shortcuts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConflictCard extends StatelessWidget {
  final Color? color;
  final EdgeInsets? padding;
  const ConflictCard({super.key, this.color, this.padding});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteBloc, NoteState>(builder: (context, noteState) {
      final taskConflictedItems = noteState.syncResult?.conflicts ?? [];
      if (taskConflictedItems.isEmpty) {
        return const SizedBox.shrink();
      }
      return Padding(
        padding: padding ?? EdgeInsets.zero,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ConflictResolver(),
              ),
            );
          },
          child: ElevatedContainer(
            width: double.infinity,
            color: color ?? getTheme(context).surface,
            padding: EdgeInsets.all($constants.insets.xs),
            child: Row(
              children: [
                Icon(
                  CupertinoIcons.exclamationmark_octagon_fill,
                  size: 32,
                  color: getTheme(context).error,
                ),
                SizedBox(
                  width: $constants.insets.sm,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.t.sync.conflicts,
                      style: getTextTheme(context).bodyMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      context.t.sync.x_items_have_conflicts(
                        n: taskConflictedItems.length,
                      ),
                      style: getTextTheme(context).bodyMedium!.copyWith(),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
