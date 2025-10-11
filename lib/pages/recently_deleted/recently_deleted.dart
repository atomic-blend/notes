import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/blocs/note/note_bloc.dart';
import 'package:notes/components/buttons/note_card.dart';
import 'package:ab_shared/components/forms/search_bar.dart';
import 'package:ab_shared/components/widgets/elevated_container.dart';
import 'package:notes/entities/note/note_entity.dart';
import 'package:notes/i18n/strings.g.dart';
import 'package:ab_shared/utils/constants.dart';
import 'package:ab_shared/utils/shortcuts.dart';

class RecentlyDeleted extends StatefulWidget {
  const RecentlyDeleted({super.key});

  @override
  State<RecentlyDeleted> createState() => _RecentlyDeletedState();
}

class _RecentlyDeletedState extends State<RecentlyDeleted> {
  final TextEditingController _searchController = TextEditingController();
  List<Note>? _searchResults;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteBloc, NoteState>(builder: (context, noteState) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _searchNotes(noteState.notes ?? [], _searchController.text);
      });
      return Scaffold(
        appBar: AppBar(
          title: Text(
            context.t.recently_deleted.title,
            style: getTextTheme(context).headlineSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: $constants.insets.sm,
          ),
          child: Column(
            children: [
              ElevatedContainer(
                child: ABSearchBar(
                    controller: _searchController,
                    onChanged: (value) {
                      _searchNotes(noteState.notes ?? [], value);
                    }),
              ),
              SizedBox(
                height: $constants.insets.sm,
              ),
              Expanded(
                  child: Column(
                children: [
                  ...?_searchResults?.map((note) => Padding(
                        padding: EdgeInsets.only(bottom: $constants.insets.xs),
                        child: NoteCard(
                          note: note,
                          deleteEnabled: false,
                          restoreEnabled: true,
                        ),
                      )),
                  if (_searchResults?.isEmpty == true)
                    Center(
                      child: Text(context.t.recently_deleted.no_notes),
                    ),
                ],
              ))
            ],
          ),
        ),
      );
    });
  }

  _searchNotes(List<Note> notes, String? query) {
    // Implement search functionality here
    if (query == null || query.isEmpty) {
      _searchResults = notes.where((note) => note.deleted == true).toList();
    } else {
      // Filter notes based on the query
      _searchResults = notes
          .where((note) =>
              note.deleted == true &&
              note.content != null &&
              note.content!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    setState(() {});
  }
}
