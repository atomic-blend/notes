import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:notes/blocs/note/note_bloc.dart';
import 'package:notes/components/modals/delete_confirm_modal.dart';
import 'package:ab_shared/components/widgets/elevated_container.dart';
import 'package:notes/entities/note/note_entity.dart';
import 'package:notes/i18n/strings.g.dart';
import 'package:notes/pages/note_detail/note_detail.dart';
import 'package:ab_shared/utils/constants.dart';
import 'package:ab_shared/utils/shortcuts.dart';

class NoteItem extends StatelessWidget {
  final Note note;
  final bool? deleteEnabled;
  final bool? restoreEnabled;
  const NoteItem({
    super.key,
    required this.note,
    this.deleteEnabled,
    this.restoreEnabled,
  });

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(motion: const ScrollMotion(), children: [
        SizedBox(
          width: $constants.insets.xs,
        ),
        if (deleteEnabled == true)
          Theme(
            data: Theme.of(context).copyWith(
                outlinedButtonTheme: const OutlinedButtonThemeData(
              style: ButtonStyle(
                  iconColor: WidgetStatePropertyAll(Colors.white),
                  iconSize: WidgetStatePropertyAll(25)),
            )),
            child: SlidableAction(
              onPressed: (context) {
                showDialog(
                  context: context,
                  builder: (context) => ABModal(
                    title: context.t.my_notes.delete_note.title,
                    description: context.t.my_notes.delete_note.description,
                    warning: context.t.my_notes.delete_note.warning,
                    onConfirm: () {
                      context.read<NoteBloc>().add(ArchiveNote(note.id!));
                    },
                  ),
                );
              },
              backgroundColor: getTheme(context).error,
              foregroundColor: Colors.white,
              icon: CupertinoIcons.delete,
              borderRadius: BorderRadius.circular(
                $constants.corners.lg,
              ),
            ),
          ),
        if (restoreEnabled == true)
          Theme(
            data: Theme.of(context).copyWith(
                outlinedButtonTheme: const OutlinedButtonThemeData(
              style: ButtonStyle(
                  iconColor: WidgetStatePropertyAll(Colors.white),
                  iconSize: WidgetStatePropertyAll(25)),
            )),
            child: SlidableAction(
              onPressed: (context) {
                context.read<NoteBloc>().add(RestoreNote(note.id!));
              },
              backgroundColor: getTheme(context).primary,
              foregroundColor: Colors.white,
              icon: CupertinoIcons.arrow_counterclockwise,
              borderRadius: BorderRadius.circular(
                $constants.corners.lg,
              ),
            ),
          ),
      ]),
      child: GestureDetector(
        onTap: () {
          if (isDesktop(context)) {
            showDialog(
                context: context,
                builder: (context) => Dialog(
                      child: SizedBox(
                        height: getSize(context).height * 0.8,
                        width: getSize(context).width * 0.8,
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular($constants.corners.md),
                          child: NoteDetail(note: note),
                        ),
                      ),
                    ));
          } else {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => NoteDetail(note: note)));
          }
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
      ),
    );
  }
}
