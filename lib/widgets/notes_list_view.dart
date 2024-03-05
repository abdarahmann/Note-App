import 'package:flutter/material.dart';

import 'note_item_widget.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, int index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: NoteItem(),
          );
        },
      ),
    );
  }
}
