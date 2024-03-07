import 'package:flutter/material.dart';

snackbar(context, String content) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(content,style: const TextStyle(color: Colors.white),),
    backgroundColor: Colors.red,
  ));
}
