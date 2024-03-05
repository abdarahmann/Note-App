import 'package:flutter/material.dart';

import 'custom_textfield.dart';

class NoteBottomSheet extends StatelessWidget {
  const NoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          CustomTextField(
            hint: 'Title',
          ),
          CustomTextField(
            hint: 'Title',
            maxLines: 5,
          )
        ],
      ),
    );
  }
}
