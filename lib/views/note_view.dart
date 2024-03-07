import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

import '../widgets/add_note_bottom_sheet.dart';
import '../widgets/notes_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimarycolor,
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              context: context,
              builder: (context) {
                return const NoteBottomSheet();
              });
        },
        child: const Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}
