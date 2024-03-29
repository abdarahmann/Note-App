import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/note_cubit/cubit/note_cubit_cubit.dart';
import 'package:notes_app/models/note_model.dart';

import 'note_item_widget.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubitCubit, NoteCubitState>(
      builder: (context, state) {
        List<NoteModel> notes=BlocProvider.of<NoteCubitCubit>(context).notes ??[];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ListView.builder(
            itemCount:notes.length ,
            padding: EdgeInsets.zero,
            itemBuilder: (context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: NoteItem(noteModel: notes[index],),
              );
            },
          ),
        );
      },
    );
  }
}
