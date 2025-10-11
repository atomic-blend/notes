import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:notes/pages/notes/filtered_notes_view.dart';

part 'all.g.dart';

@TypedGoRoute<AllRoute>(path: '/notes/all', name: "all")
class AllRoute extends GoRouteData with _$AllRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const FilteredNotesView(
      title: "All Notes",
    );
  }
}
