import 'package:notes/blocs/auth/auth.bloc.dart';
import 'package:notes/blocs/note/note_bloc.dart';
import 'package:notes/components/buttons/primary_button_square.dart';
import 'package:notes/components/widgets/elevated_container.dart';
import 'package:notes/i18n/strings.g.dart';
import 'package:notes/pages/sync/conflict_card.dart';
import 'package:notes/services/sync.service.dart';
import 'package:notes/utils/api_client.dart';
import 'package:notes/utils/constants.dart';
import 'package:notes/utils/shortcuts.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SyncStatus extends StatefulWidget {
  final Widget? customButton;
  const SyncStatus({super.key, this.customButton});

  @override
  State<SyncStatus> createState() => _SyncStatusState();
}

class _SyncStatusState extends State<SyncStatus> {
  @override
  Widget build(BuildContext context) {
    if (widget.customButton != null) {
      return widget.customButton!;
    }
    return BlocBuilder<NoteBloc, NoteState>(builder: (context, noteState) {
      return Stack(
        children: [
          GestureDetector(
            onLongPress: () {
              SyncService.sync(context);
            },
            onTap: () {
              if (isDesktop(context)) {
                showDialog(
                  context: context,
                  builder: (context) => Dialog(
                    child: SizedBox(
                        height: getSize(context).height * 0.4,
                        width: getSize(context).width * 0.4,
                        child: _buildSyncModal(context)),
                  ),
                );
              } else {
                showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) => SizedBox(
                        height: getSize(context).height * 0.8,
                        child: _buildSyncModal(context)));
              }
            },
            child: ElevatedContainer(
              borderRadius: $constants.corners.full,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  CupertinoIcons.cloud,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            right: 6,
            child: _hasConflictedItems(noteState: noteState)
                ? Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(
                      CupertinoIcons.exclamationmark,
                      size: 8,
                      color: Colors.white,
                    ),
                  )
                : !_isLoading(noteState: noteState)
                    ? Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      )
                    : Container(
                        width: 14,
                        height: 14,
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          color: getTheme(context).surfaceContainer,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const CircularProgressIndicator(
                          color: Colors.blueAccent,
                          strokeWidth: 3,
                        ),
                      ),
          ),
        ],
      );
    });
  }

  Widget _buildSyncModal(BuildContext context) {
    var selfHostedUrl = ApiClient.getSelfHostedRestApiUrl();
    return BlocBuilder<AuthBloc, AuthState>(builder: (context, authState) {
      return BlocBuilder<NoteBloc, NoteState>(
        builder: (context, noteState) {
          final taskConflictedItems = noteState.syncResult?.conflicts;
          return Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: $constants.insets.sm,
                  vertical: $constants.insets.sm,
                ),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        context.t.sync.title,
                        style: getTextTheme(context).headlineMedium!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    SizedBox(
                      height: $constants.insets.md,
                    ),
                    Expanded(
                      child: ElevatedContainer(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: $constants.insets.md,
                                  vertical: $constants.insets.sm),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: getTheme(context).primary,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: Center(
                                            child: AutoSizeText(
                                          maxLines: 1,
                                          "${authState.user?.firstname?[0] ?? "A"}${authState.user?.lastname?[0] ?? "B"}",
                                          style: getTextTheme(context)
                                              .labelLarge!
                                              .copyWith(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700,
                                              ),
                                        )),
                                      ),
                                      SizedBox(
                                        width: $constants.insets.sm,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            authState.user?.email ??
                                                "Anonymous",
                                            style: getTextTheme(context)
                                                .bodyMedium!
                                                .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          Text.rich(
                                            textAlign: TextAlign.center,
                                            TextSpan(
                                                text: selfHostedUrl != null &&
                                                        selfHostedUrl != ""
                                                    ? Uri.parse(ApiClient
                                                            .getSelfHostedRestApiUrl()!)
                                                        .host
                                                    : context.t.app_name_saas,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                )),
                                            style: getTextTheme(context)
                                                .bodyMedium!
                                                .copyWith(
                                                  color: Colors.grey,
                                                ),
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: $constants.insets.sm),
                              child: const Divider(
                                height: 4,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: $constants.insets.sm,
                                  vertical: $constants.insets.xs),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        context.t.sync.status,
                                        style: getTextTheme(context)
                                            .bodyMedium!
                                            .copyWith(
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      SizedBox(
                                        height: $constants.insets.xxs,
                                      ),
                                      _buildStatusContainer(
                                        context,
                                        color: _isLoading(noteState: noteState)
                                            ? Colors.amber
                                            : _hasConflictedItems(
                                                    noteState: noteState)
                                                ? Colors.red
                                                : Colors.green,
                                        text: _isLoading(noteState: noteState)
                                            ? context.t.sync.loading
                                            : _hasConflictedItems(
                                                    noteState: noteState)
                                                ? context.t.sync.conflicts
                                                : context.t.sync.up_to_date,
                                      ),
                                      SizedBox(
                                        height: $constants.insets.xs,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: $constants.insets.xs,
                                  ),
                                  const Divider(),
                                  SizedBox(
                                    height: $constants.insets.xs,
                                  ),
                                  if (taskConflictedItems != null &&
                                      taskConflictedItems.isNotEmpty) ...[
                                    const ConflictCard(),
                                    SizedBox(
                                      height: $constants.insets.sm,
                                    ),
                                  ],
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        context.t.sync.details.title,
                                        style: getTextTheme(context)
                                            .bodyMedium!
                                            .copyWith(
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      SizedBox(
                                        height: $constants.insets.xxs,
                                      ),
                                      _buildSyncItemRow(
                                        context,
                                        title: context.t.sync.details.tasks,
                                        icon: CupertinoIcons.checkmark_square,
                                        noteState: noteState,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: $constants.insets.sm,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: $constants.insets.sm,
                      ),
                      child: PrimaryButtonSquare(
                          text: context.t.sync.sync_now,
                          onPressed: () {
                            SyncService.sync(context);
                          }),
                    ),
                    SizedBox(
                      height: isDesktop(context)
                          ? $constants.insets.xs
                          : $constants.insets.lg,
                    ),
                  ],
                ),
              ),
              Positioned(
                right: $constants.insets.sm,
                top: $constants.insets.sm,
                child: ElevatedContainer(
                  borderRadius: $constants.corners.full,
                  padding: EdgeInsets.all($constants.insets.xs),
                  child: const Icon(
                    CupertinoIcons.xmark,
                    size: 18,
                  ),
                ),
              )
            ],
          );
        },
      );
    });
  }

  Widget _buildSyncItemRow(
    BuildContext context, {
    required String title,
    required IconData icon,
    required NoteState noteState,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: $constants.insets.xs,
        horizontal: $constants.insets.xs,
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 32,
            color: getTheme(context).primary,
          ),
          SizedBox(
            width: $constants.insets.xs,
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: getTextTheme(context).bodyLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    if (!_isTaskBlocLoading(noteState: noteState) &&
                        !_taskHasConflictedItems(noteState: noteState))
                      Text(
                          context.t.sync.details.task_items(
                            n: noteState.notes?.length ?? 0,
                          ),
                          style: getTextTheme(context).bodyMedium!.copyWith()),
                  ],
                ),
                SizedBox(
                  width: $constants.insets.xs,
                ),
                _buildStatusContainer(
                  context,
                  color: _isTaskBlocLoading(noteState: noteState)
                      ? Colors.amber
                      : _taskHasConflictedItems(noteState: noteState)
                          ? Colors.red
                          : Colors.green,
                  text: _isTaskBlocLoading(noteState: noteState)
                      ? context.t.sync.loading
                      : _taskHasConflictedItems(noteState: noteState)
                          ? context.t.sync.conflicts
                          : context.t.sync.up_to_date,
                  textColor: Colors.white,
                  textSize: 10,
                  height: 14,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildStatusContainer(
    BuildContext context, {
    required Color color,
    required String text,
    double? height,
    Color? textColor,
    double? textSize,
  }) {
    return ElevatedContainer(
      height: height ?? 20,
      width: double.infinity,
      color: color,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: textColor ?? Colors.white, fontSize: textSize ?? 14),
        ),
      ),
    );
  }

  bool _isLoading({required NoteState noteState}) {
    return _isTaskBlocLoading(noteState: noteState);
  }

  bool _isTaskBlocLoading({required NoteState noteState}) {
    return noteState is NoteLoading || noteState is NoteSyncInProgress;
  }

  bool _hasConflictedItems({required NoteState noteState}) {
    return _taskHasConflictedItems(noteState: noteState);
  }

  bool _taskHasConflictedItems({required NoteState noteState}) {
    return noteState.syncResult?.conflicts.isNotEmpty ?? false;
  }
}
