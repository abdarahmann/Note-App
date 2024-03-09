import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hint, this.maxLines = 1, this.onSaved, this.onChanged});
  final String hint;
  final int maxLines;
  final  Function(String)? onChanged;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged:onChanged ,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is requierd';
        } else {
          return null;
        }
      },
      maxLines: maxLines,
      cursorColor: kPrimarycolor,
      decoration: InputDecoration(
        hintText: hint,
        border: buildBorder(Colors.white),
        enabledBorder: buildBorder(Colors.white),
        focusedBorder: buildBorder(kPrimarycolor),
      ),
    );
  }
}

OutlineInputBorder buildBorder(Color color) {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: color));
}
