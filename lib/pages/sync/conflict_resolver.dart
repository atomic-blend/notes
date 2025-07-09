import 'package:notes/blocs/note/note_bloc.dart';
import 'package:notes/components/forms/ab_checkbox.dart';
import 'package:notes/components/widgets/elevated_container.dart';
import 'package:notes/entities/sync/conflicted_item/conflicted_item.dart';
import 'package:notes/entities/sync/item_type/item_type.dart';
import 'package:notes/entities/sync/patch/patch.dart';
import 'package:notes/entities/sync/patch_change/patch_change.dart';
import 'package:notes/i18n/strings.g.dart';
import 'package:notes/utils/constants.dart';
import 'package:notes/utils/shortcuts.dart';
import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConflictResolver extends StatefulWidget {
  const ConflictResolver({super.key});

  @override
  State<ConflictResolver> createState() => _ConflictResolverState();
}

class _ConflictResolverState extends State<ConflictResolver> {
  int _selectedIndex = 0;
  bool _applyToAll = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.t.sync.conflict_resolver.title,
          style: getTextTheme(context).bodyLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      body: SafeArea(
        child: BlocBuilder<NoteBloc, NoteState>(builder: (context, noteState) {
          final patches = <Patch>[];
          final conflicts = <ConflictedItem>[];
          if (noteState.syncResult?.conflicts != null) {
            conflicts.addAll(noteState.syncResult!.conflicts);
            patches.addAll(noteState.stagedPatches ?? []);
          }
          final patch = patches.firstWhereOrNull(
              (p) => p.id == conflicts[_selectedIndex].patchId);
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: $constants.insets.sm,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.t.sync.conflict_resolver.progress,
                  style: getTextTheme(context).bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Stack(
                  children: [
                    ElevatedContainer(
                      height: 50,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: $constants.insets.sm,
                          horizontal: $constants.insets.sm,
                        ),
                        child: LinearProgressIndicator(
                          value: _selectedIndex / conflicts.length,
                          borderRadius: BorderRadius.circular(10),
                          backgroundColor: Colors.grey[300],
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    Positioned(
                        top: 0,
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Center(
                            child: Text(
                                "${_selectedIndex + 1} / ${conflicts.length}")))
                  ],
                ),
                SizedBox(
                  height: $constants.insets.sm,
                ),
                Text(
                  context.t.sync.conflict_resolver.in_app_version,
                  style: getTextTheme(context).bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ElevatedContainer(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          vertical: $constants.insets.sm,
                          horizontal: $constants.insets.sm,
                        ),
                        child: Column(
                          children: [
                            _getItemUi(context, patch?.itemType, patch?.itemId)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: $constants.insets.sm,
                      ),
                      Text(context.t.sync.conflict_resolver.changes_to_apply,
                          style: getTextTheme(context).bodyLarge!.copyWith(
                                fontWeight: FontWeight.bold,
                              )),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: getSize(context).height * 0.12,
                        ),
                        child: ElevatedContainer(
                          width: double.infinity,
                          child: Column(
                            children: [
                              SizedBox(
                                height: $constants.insets.sm,
                              ),
                              _getPatchChanges(patch?.itemType, patch?.changes),
                              SizedBox(
                                height: $constants.insets.sm,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: $constants.insets.sm,
                ),
                Text(
                  context.t.sync.conflict_resolver.choose_between,
                  style: getTextTheme(context).bodyLarge!.copyWith(),
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ABCheckbox(
                      size: 23,
                      value: _applyToAll,
                      onChanged: (value) {
                        setState(() {
                          _applyToAll = value!;
                        });
                      },
                    ),
                    SizedBox(
                      width: $constants.insets.xs,
                    ),
                    Text(context.t.sync.conflict_resolver.apply_to_all,
                        style: getTextTheme(context).bodyMedium!.copyWith(
                              fontWeight: FontWeight.bold,
                            )),
                  ],
                ),
                SizedBox(
                  height: $constants.insets.xs,
                ),
                Row(
                  spacing: $constants.insets.sm,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          //DISCARD PATCH
                          if (patch == null) return;

                          if (_applyToAll) {
                            _discardPatchAll(context, patches);
                          } else {
                            _discardPatch(context, patch);
                            if (_selectedIndex < conflicts.length - 1) {
                              setState(() {
                                _selectedIndex++;
                              });
                            }
                          }
                          if (_selectedIndex == conflicts.length) {
                            Navigator.pop(context);
                          }
                        },
                        child: ElevatedContainer(
                          padding: EdgeInsets.symmetric(
                            vertical: $constants.insets.sm,
                          ),
                          color: getTheme(context).error.withValues(alpha: 0.8),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                CupertinoIcons.xmark,
                                size: 70,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: $constants.insets.xs,
                              ),
                              Text(context.t.sync.conflict_resolver.refuse,
                                  style:
                                      getTextTheme(context).bodyLarge!.copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          )),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          //FORCE PATCH
                          if (patch == null) return;

                          if (_applyToAll) {
                            _forcePatchAll(context, patches);
                          } else {
                            _forcePatch(context, patch);
                            if (_selectedIndex < conflicts.length - 1) {
                              setState(() {
                                _selectedIndex++;
                              });
                            }
                          }
                          if (_selectedIndex == conflicts.length) {
                            Navigator.pop(context);
                          }
                        },
                        child: ElevatedContainer(
                          padding: EdgeInsets.symmetric(
                            vertical: $constants.insets.sm,
                          ),
                          color:
                              getTheme(context).primary.withValues(alpha: 0.8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                CupertinoIcons.check_mark,
                                size: 70,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: $constants.insets.xs,
                              ),
                              Text(context.t.sync.conflict_resolver.accept,
                                  style:
                                      getTextTheme(context).bodyLarge!.copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        }),
      ),
    );
  }

  _getPatchChanges(ItemType? type, List<PatchChange>? changes) {
    switch (type) {
      case ItemType.task:
        return const SizedBox.shrink();
      case ItemType.note:
        // Handle note patch changes if needed
        return const SizedBox.shrink();
      default:
        // Handle other item types if needed
        return const SizedBox.shrink();
    }
  }

  _forcePatch(BuildContext context, Patch patch) {
    switch (patch.itemType) {
      case ItemType.task:
        break;
      case ItemType.note:
        // Handle note patching if needed
        break;
    }
  }

  _forcePatchAll(BuildContext context, List<Patch> patches) {
    for (var patch in patches) {
      _forcePatch(context, patch);
    }
  }

  _discardPatch(BuildContext context, Patch patch) {
    switch (patch.itemType) {
      case ItemType.task:
        break;
      case ItemType.note:
        // Handle note patching if needed
        break;
    }
  }

  _discardPatchAll(BuildContext context, List<Patch> patches) {
    for (var patch in patches) {
      _discardPatch(context, patch);
    }
  }

  _getItemUi(BuildContext context, ItemType? type, String? itemId) {
    switch (type) {
      case ItemType.task:
        // Return TaskCard or similar widget for tasks
        return const SizedBox.shrink(); // Placeholder for task UI
      case ItemType.note:
        // Return NoteCard or similar widget for notes
        return const SizedBox.shrink(); // Placeholder for note UI
      default:
        return const SizedBox.shrink(); // Placeholder for other item types
    }
  }
}
