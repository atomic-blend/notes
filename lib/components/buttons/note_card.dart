import 'package:ab_shared/components/modals/ab_modal.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:notes/blocs/note/note_bloc.dart';
import 'package:notes/entities/note/note_entity.dart';
import 'package:notes/i18n/strings.g.dart';
import 'package:notes/pages/note_detail/note_detail.dart';
import 'package:ab_shared/utils/constants.dart';
import 'package:ab_shared/utils/shortcuts.dart';

class NoteCard extends StatefulWidget {
  final Note note;
  final bool? deleteEnabled;
  final bool? restoreEnabled;
  final Function(Note)? onSelect;
  final Function(Note)? onDeselect;
  final List<Note> selectedNotes;
  final bool? selectMode;
  final Function(bool)? setSelectMode;
  final bool? enabled;
  final Color? backgroundColor;

  const NoteCard({
    super.key,
    required this.note,
    this.deleteEnabled,
    this.restoreEnabled,
    this.onSelect,
    this.onDeselect,
    this.selectedNotes = const [],
    this.selectMode,
    this.setSelectMode,
    this.enabled = true,
    this.backgroundColor,
  });

  @override
  State<NoteCard> createState() => _NoteCardState();
}

class _NoteCardState extends State<NoteCard> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Slidable(
        enabled: widget.enabled ?? true,
        endActionPane: ActionPane(motion: const ScrollMotion(), children: [
          SizedBox(
            width: $constants.insets.xs,
          ),
          if (widget.deleteEnabled == true)
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
                        context
                            .read<NoteBloc>()
                            .add(ArchiveNote(widget.note.id!));
                        Navigator.pop(context);
                      },
                    ),
                  );
                },
                backgroundColor: getTheme(context).error,
                foregroundColor: Colors.white,
                icon: CupertinoIcons.delete,
                borderRadius: BorderRadius.circular(
                  $constants.corners.sm,
                ),
              ),
            ),
          if (widget.restoreEnabled == true)
            Theme(
              data: Theme.of(context).copyWith(
                  outlinedButtonTheme: const OutlinedButtonThemeData(
                style: ButtonStyle(
                    iconColor: WidgetStatePropertyAll(Colors.white),
                    iconSize: WidgetStatePropertyAll(25)),
              )),
              child: SlidableAction(
                onPressed: (context) {
                  context.read<NoteBloc>().add(RestoreNote(widget.note.id!));
                  Navigator.pop(context);
                },
                backgroundColor: getTheme(context).primary,
                foregroundColor: Colors.white,
                icon: CupertinoIcons.arrow_counterclockwise,
                borderRadius: BorderRadius.circular(
                  $constants.corners.sm,
                ),
              ),
            ),
        ]),
        child: MouseRegion(
          onEnter: (event) {
            if (widget.enabled == false) return;
            setState(() {
              isHovering = true;
            });
          },
          onExit: (event) {
            if (widget.enabled == false) return;
            setState(() {
              isHovering = false;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: isHovering || (widget.selectedNotes.contains(widget.note))
                  ? widget.backgroundColor?.darken(3) ??
                      getTheme(context).surfaceContainer
                  : widget.backgroundColor,
              borderRadius: BorderRadius.circular($constants.corners.sm),
            ),
            padding: EdgeInsets.only(
              left: $constants.insets.sm,
              top: $constants.insets.xs,
              bottom: $constants.insets.xs,
            ),
            child: GestureDetector(
              onLongPress: () {
                widget.setSelectMode?.call(true);
                _toggleSelected(widget.note);
              },
              onTap: () async {
                if (!isDesktop(context)) {
                  // on mobile, open the note in the detail screen only when no notes are selected (ie not in multi-select mode)
                  if (widget.selectedNotes.isEmpty) {
                    await Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => NoteDetail(note: widget.note)));
                  } else {
                    // when in multi-select mode, toggle the selection of the note
                    _toggleSelected(widget.note);
                  }
                } else {
                  // on desktop, tapping the note opens it in the preview panel
                  // multi-select mode enables itself when the user clicks on the avatar / checkbox
                  _toggleSelected(
                    widget.note,
                    reset: widget.selectMode != true,
                  );
                }
              },
              child: Row(
                children: [
                  if (widget.selectMode == true &&
                      widget.selectedNotes.contains(widget.note))
                    GestureDetector(
                      onTap: () {
                        if (isDesktop(context)) {
                          if (widget.selectMode == true &&
                              widget.selectedNotes.length == 1) {
                            widget.setSelectMode?.call(false);
                          } else {
                            widget.setSelectMode?.call(true);
                          }
                        } else {
                          widget.setSelectMode?.call(true);
                        }
                        _toggleSelected(widget.note,
                            reset: widget.selectMode != true);
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: $constants.insets.xs),
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: getTheme(context).primary,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Icon(
                            CupertinoIcons.checkmark,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    )
                  else
                    GestureDetector(
                      onTap: () {
                        if (isDesktop(context)) {
                          if (widget.selectMode == true &&
                              widget.selectedNotes.length == 1 &&
                              widget.selectedNotes.contains(widget.note)) {
                            widget.setSelectMode?.call(false);
                          } else {
                            widget.setSelectMode?.call(true);
                          }
                        } else {
                          widget.setSelectMode?.call(true);
                        }
                        _toggleSelected(widget.note,
                            reset: widget.selectMode != true);
                      },
                      child: Container(),
                    ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: isDesktop(context)
                            ? constraints.maxWidth * 0.63
                            : null,
                        child: Text(
                          widget.note.displayTitle != ""
                              ? widget.note.displayTitle
                              : context.t.my_notes.untitled,
                          style: getTextTheme(context).headlineSmall!.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(height: $constants.insets.xxs),
                      SizedBox(
                        width: isDesktop(context)
                            ? constraints.maxWidth * 0.63
                            : null,
                        child: Text(
                          widget.note.description != ""
                              ? widget.note.description
                              : context.t.my_notes.no_content,
                          style: getTextTheme(context).bodyMedium!.copyWith(
                                color: getTheme(context).onSurface.lighten(40),
                              ),
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                  if (widget.selectMode == true) ...[
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        if (isDesktop(context)) {
                          showDialog(
                            context: context,
                            builder: (context) => Dialog(
                              insetPadding: EdgeInsets.zero,
                              child: SizedBox(
                                width: getSize(context).width * 0.8,
                                height: getSize(context).height * 0.8,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      $constants.corners.lg),
                                  child: NoteDetail(
                                    note: widget.note,
                                  ),
                                ),
                              ),
                            ),
                          );
                        } else {
                          showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            builder: (context) => SizedBox(
                              height: getSize(context).height * 0.8,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft:
                                      Radius.circular($constants.corners.lg),
                                  topRight:
                                      Radius.circular($constants.corners.lg),
                                ),
                                child: NoteDetail(
                                  note: widget.note,
                                ),
                              ),
                            ),
                          );
                        }
                      },
                      child: Container(
                        padding: EdgeInsets.all($constants.insets.xs),
                        decoration: BoxDecoration(
                          color: getTheme(context).surfaceContainer.lighten(10),
                          borderRadius:
                              BorderRadius.circular($constants.corners.sm),
                        ),
                        child: const Icon(
                          CupertinoIcons.eye,
                          size: 17,
                        ),
                      ),
                    ),
                    SizedBox(width: $constants.insets.xs),
                  ]
                ],
              ),
            ),
          ),
        ),
      );
    });
  }

  void _toggleSelected(Note note, {bool reset = false}) {
    if (reset) {
      widget.selectedNotes.clear();
    }
    if (widget.selectedNotes.contains(note)) {
      widget.onDeselect?.call(note);
    } else {
      widget.onSelect?.call(note);
    }
  }
}
