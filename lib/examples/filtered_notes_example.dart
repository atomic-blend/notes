import 'package:flutter/material.dart';
import 'package:notes/entities/note/note_entity.dart';
import 'package:notes/pages/notes/filtered_notes_view.dart';

// Example usage of FilteredNotesView
class ExampleFilteredNotesUsage extends StatelessWidget {
  const ExampleFilteredNotesUsage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Example 1: All notes (no filter)
          const Expanded(
            child: FilteredNotesView(
              title: "All Notes",
            ),
          ),

          // Example 2: Filtered notes (only non-deleted notes)
          Expanded(
            child: FilteredNotesView(
              title: "Active Notes",
              filter: (Note note) => note.deleted != true,
            ),
          ),

          // Example 3: Filtered notes (only notes with titles)
          Expanded(
            child: FilteredNotesView(
              title: "Titled Notes",
              filter: (Note note) =>
                  note.title != null && note.title!.isNotEmpty,
            ),
          ),

          // Example 4: Filtered notes (recent notes from last 7 days)
          Expanded(
            child: FilteredNotesView(
              title: "Recent Notes",
              filter: (Note note) {
                if (note.createdAt == null) return false;
                final now = DateTime.now();
                final weekAgo = now.subtract(const Duration(days: 7));
                return note.createdAt!.isAfter(weekAgo);
              },
            ),
          ),
        ],
      ),
    );
  }
}
