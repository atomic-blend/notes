import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ab_shared/components/ab_toast.dart';
import 'package:ab_shared/utils/constants.dart';
import 'package:ab_shared/utils/shortcuts.dart';
import 'package:notes/blocs/note/note_bloc.dart';
import 'package:notes/components/toast_notifications/selected_notes.dart';
import 'package:notes/entities/note/note_entity.dart';
import 'package:notes/pages/note_detail/note_detail.dart';
import 'package:notes/pages/notes/note_list.dart';
import 'package:notes/pages/notes/no_note_selected.dart';
import 'package:notes/pages/notes/selected_list.dart';
import 'package:notes/utils/get_it.dart';

class FilteredNotesView extends StatefulWidget {
  final String title;
  final Function(Note)? filter;

  const FilteredNotesView({
    super.key,
    required this.title,
    this.filter,
  });

  @override
  State<FilteredNotesView> createState() => _FilteredNotesViewState();
}

class _FilteredNotesViewState extends State<FilteredNotesView> {
  final abToastController = getIt<ABToastController>();
  List<Note> selectedNotes = [];
  bool? isSelecting = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteBloc, NoteState>(builder: (context, noteState) {
      final filteredNotes = noteState.notes
              ?.where((note) => widget.filter?.call(note) ?? true)
              .toList() ??
          [];

      if (!isDesktop(context) &&
          selectedNotes.isNotEmpty &&
          isSelecting == true) {
        abToastController.replaceNotification(
          ABToastNotification(
            key: const ValueKey("selected_notes"),
            content: SelectedNotesToastNotification(notes: selectedNotes),
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) => SizedBox(
                    height: getSize(context).height * 0.8,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular($constants.corners.lg),
                        topRight: Radius.circular($constants.corners.lg),
                      ),
                      child: SelectedListScreen(
                        notes: selectedNotes,
                        windowed: true,
                        onClearSelection: () {
                          setState(() {
                            selectedNotes.clear();
                          });
                        },
                      ),
                    )),
              );
            },
          ),
        );
      } else {
        abToastController.removeNotification(
          const ValueKey("selected_notes"),
        );
      }

      return Row(
        children: [
          SizedBox(
            width: isDesktop(context)
                ? getSize(context).width > $constants.screenSize.md
                    ? 350
                    : getSize(context).width * 0.66
                : getSize(context).width,
            child: Column(
              children: [
                Expanded(
                  child: NoteList(
                    notes: filteredNotes,
                    onSelect: (note) {
                      setState(() {
                        selectedNotes.add(note);
                      });
                    },
                    onDeselect: (note) {
                      setState(() {
                        selectedNotes.remove(note);
                      });
                    },
                    selectedNotes: selectedNotes,
                    isSelecting: isSelecting,
                    setIsSelecting: (value) {
                      setState(() {
                        isSelecting = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          if (isDesktop(context) &&
              getSize(context).width > $constants.screenSize.md) ...[
            SizedBox(width: $constants.insets.xs),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(
                  right: $constants.insets.xs,
                  bottom: $constants.insets.xs,
                ),
                child: filteredNotes.isEmpty || selectedNotes.isEmpty
                    ? NoNoteSelectedScreen(
                        icon: CupertinoIcons.doc_text,
                        title: widget.title,
                        numberOfNotes: filteredNotes.length,
                      )
                    : selectedNotes.length == 1 && isSelecting != true
                        ? NoteDetail(
                            note: selectedNotes.first,
                          )
                        : SelectedListScreen(
                            notes: selectedNotes,
                            onClearSelection: () {
                              setState(() {
                                selectedNotes.clear();
                              });
                            },
                          ),
              ),
            ),
          ]
        ],
      );
    });
  }
}
