import 'package:flutter/material.dart';

import '../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap,this.isLoading=false});
  final VoidCallback? onTap;
 final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: kPrimarycolor,
          borderRadius: BorderRadius.circular(10),
        ),
        height: 45,
        width: MediaQuery.of(context).size.width,
        child:  Center(
          child:isLoading?const SizedBox(height: 20,width: 20,child: CircularProgressIndicator()):const Text(
            'Add',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
