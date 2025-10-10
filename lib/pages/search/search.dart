import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/blocs/note/note_bloc.dart';
import 'package:notes/components/buttons/note_item.dart';
import 'package:ab_shared/components/forms/search_bar.dart';
import 'package:ab_shared/components/widgets/elevated_container.dart';
import 'package:notes/entities/note/note_entity.dart';
import 'package:ab_shared/utils/constants.dart';
import 'package:go_router/go_router.dart';

part 'search.g.dart';

@TypedGoRoute<SearchRoute>(path: '/search', name: "search")
class SearchRoute extends GoRouteData with _$SearchRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Search();
  }
}

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController _searchController = TextEditingController();
  List<Note> _searchResults = [];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteBloc, NoteState>(builder: (context, noteState) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
        child: Column(
          children: [
            ElevatedContainer(
                child: ABSearchBar(
              controller: _searchController,
              onChanged: (value) {
                if (value.isEmpty) {
                  setState(() {
                    _searchResults = [];
                  });
                } else {
                  setState(() {
                    _searchResults = (noteState.notes ?? [])
                        .where((note) =>
                            note.content != null &&
                            note.content!
                                .toLowerCase()
                                .contains(value.toLowerCase()))
                        .toList();
                  });
                }
              },
            )),
            SizedBox(
              height: $constants.insets.sm,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  if (_searchController.text == "")
                    ...(noteState.notes ?? []).sorted((a, b) {
                      if (a.createdAt == null || b.createdAt == null) return 0;
                      return b.createdAt!.compareTo(a.createdAt!);
                    }).map((note) {
                      return Padding(
                        padding: EdgeInsets.only(
                          bottom: $constants.insets.xs,
                        ),
                        child: NoteItem(note: note),
                      );
                    }),
                  if (_searchController.text != "")
                    ..._searchResults.sorted((a, b) {
                      if (a.createdAt == null || b.createdAt == null) return 0;
                      return b.createdAt!.compareTo(a.createdAt!);
                    }).map((note) {
                      return Padding(
                        padding: EdgeInsets.only(
                          bottom: $constants.insets.xs,
                        ),
                        child: NoteItem(note: note),
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
