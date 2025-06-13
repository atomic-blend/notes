import 'package:collection/collection.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/blocs/note/note_bloc.dart';
import 'package:notes/components/widgets/elevated_container.dart';
import 'package:notes/pages/note_detail/note_detail.dart';
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
      return Padding(
        padding: EdgeInsets.only(
          left: $constants.insets.sm,
          right: $constants.insets.sm,
          bottom: $constants.insets.sm,
        ),
        child: Column(
          children: [
            if (noteState.notes != null && noteState.notes!.isNotEmpty)
              ...(noteState.notes ?? []).sorted((a, b) {
                if (a.createdAt == null || b.createdAt == null) return 0;
                return b.createdAt!.compareTo(a.createdAt!);
              }).map((note) {
                return Padding(
                  padding: EdgeInsets.only(
                    bottom: $constants.insets.xs,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NoteDetail(note: note)));
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
                              style:
                                  getTextTheme(context).headlineSmall!.copyWith(
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
                                  style: getTextTheme(context)
                                      .bodyMedium!
                                      .copyWith(
                                        color: getTheme(context)
                                            .onSurface
                                            .lighten(40),
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
                                  style: getTextTheme(context)
                                      .bodyMedium!
                                      .copyWith(
                                        color: getTheme(context)
                                            .onSurface
                                            .lighten(40),
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
