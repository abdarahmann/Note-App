// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'note_item_widget.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          SizedBox(
            height: 45,
          ),
          CustomAppBar(),
          SizedBox(
            height: 45,
          ),
          NoteItem(),
        ],
      ),
    );
  }
}
