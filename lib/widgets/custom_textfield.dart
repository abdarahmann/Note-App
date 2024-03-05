
import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimarycolor,
      decoration: InputDecoration(
        hintText: 'Title',
        
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