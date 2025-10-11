import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/blocs/note/note_bloc.dart';
import 'package:notes/components/buttons/note_card.dart';
import 'package:notes/entities/note/note_entity.dart';
import 'package:ab_shared/utils/constants.dart';
import 'package:go_router/go_router.dart';

part 'search.g.dart';

@TypedGoRoute<SearchRoute>(path: '/search', name: "search")
class SearchRoute extends GoRouteData with _$SearchRoute {
  final String? q;

  SearchRoute({this.q});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Search(query: q);
  }
}

class Search extends StatefulWidget {
  const Search({super.key, this.query});

  final String? query;

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController _searchController = TextEditingController();
  List<Note> _searchResults = [];

  @override
  void initState() {
    super.initState();
    _searchController.text = widget.query ?? "";
    _searchNotes(context.read<NoteBloc>().state.notes ?? [], widget.query);
  }

  @override
  void didUpdateWidget(Search oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.query != widget.query) {
      _searchController.text = widget.query ?? "";
      _searchNotes(context.read<NoteBloc>().state.notes ?? [], widget.query);
    }
  }

  void _searchNotes(List<Note> notes, String? query) {
    if (query == null || query.isEmpty) {
      _searchResults = notes;
    } else {
      _searchResults = notes
          .where((note) =>
              note.content?.toLowerCase().contains(query.toLowerCase()) ??
              false)
          .toList();
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteBloc, NoteState>(builder: (context, noteState) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
        child: Column(
          children: [
            // ElevatedContainer(
            //     child: ABSearchBar(
            //   controller: _searchController,
            //   onChanged: (value) {
            //     if (value.isEmpty) {
            //       _searchResults = [];
            //     } else {
            //       _searchNotes(noteState.notes ?? [], value);
            //     }
            //   },
            // )),
            // SizedBox(
            //   height: $constants.insets.sm,
            // ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  if (widget.query == null || widget.query!.isEmpty)
                    ...(noteState.notes ?? []).sorted((a, b) {
                      if (a.createdAt == null || b.createdAt == null) return 0;
                      return b.createdAt!.compareTo(a.createdAt!);
                    }).map((note) {
                      return Padding(
                        padding: EdgeInsets.only(
                          bottom: $constants.insets.xs,
                        ),
                        child: NoteCard(note: note),
                      );
                    }),
                  if (widget.query != null &&
                      widget.query!.isNotEmpty &&
                      _searchResults.isNotEmpty)
                    ..._searchResults.sorted((a, b) {
                      if (a.createdAt == null || b.createdAt == null) return 0;
                      return b.createdAt!.compareTo(a.createdAt!);
                    }).map((note) {
                      return Padding(
                        padding: EdgeInsets.only(
                          bottom: $constants.insets.xs,
                        ),
                        child: NoteCard(note: note),
                      );
                    }),
                ],
              ),
            ),
            SizedBox(
              height: $constants.insets.sm,
            )
          ],
        ),
      );
    });
  }
}
