import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/note_cubit/cubit/note_cubit_cubit.dart';

import '../constants.dart';
import '../models/note_model.dart';
import 'colors_list_view.dart';
import 'custom_app_bar.dart';
import 'custom_textfield.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({
    super.key,
    required this.noteModel,
  });
  final NoteModel noteModel;

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          const SizedBox(
            height: 45,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
            ontap: () {
              widget.noteModel.title = title ?? widget.noteModel.title;
              widget.noteModel.subtitle = subTitle ?? widget.noteModel.subtitle;
              BlocProvider.of<NoteCubitCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            hint: widget.noteModel.title,
            onChanged: (data) {
              title = data;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onChanged: (data) {
              subTitle = data;
            },
            hint: widget.noteModel.subtitle,
            maxLines: 5,
          ),
          const SizedBox(
            height: 16,
          ),
          EditNoteListView(
            noteModel: widget.noteModel,
          ),
        ],
      ),
    );
  }
}

class EditNoteListView extends StatefulWidget {
  const EditNoteListView({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  State<EditNoteListView> createState() => _EditNoteListViewState();
}

class _EditNoteListViewState extends State<EditNoteListView> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.noteModel.color));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          itemCount: kColors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  currentIndex = index;
                  widget.noteModel.color = kColors[index].value;
                  setState(() {});
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: ColorItem(
                    isActive: currentIndex == index,
                    color: kColors[index],
                  ),
                ));
          }),
    );
  }
}
