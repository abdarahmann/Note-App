import 'package:flutter/material.dart';


import 'custom_button.dart';
import 'custom_textfield.dart';

class NoteBottomSheet extends StatelessWidget {
  const NoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            CustomTextField(
              hint: 'Title',
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
              hint: 'Content',
              maxLines: 5,
            ),
            SizedBox(
              height: 100,
            ),
            CustomButton(),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}


