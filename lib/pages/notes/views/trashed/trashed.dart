import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:notes/entities/note/note_entity.dart';
import 'package:notes/pages/notes/filtered_notes_view.dart';

part 'trashed.g.dart';

@TypedGoRoute<TrashedRoute>(path: '/notes/trashed', name: "trashed")
class TrashedRoute extends GoRouteData with _$TrashedRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return FilteredNotesView(
      title: "Trashed Notes",
      filter: (Note note) => note.deleted == true,
    );
  }
}
