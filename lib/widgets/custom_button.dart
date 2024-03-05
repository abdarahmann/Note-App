import 'package:flutter/material.dart';

import '../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kPrimarycolor,
        borderRadius: BorderRadius.circular(10),
      ),
      height: 45,
      width: MediaQuery.of(context).size.width,
      child: const Center(
        child: Text(
          'Add',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}