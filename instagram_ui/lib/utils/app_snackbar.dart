import 'package:flutter/material.dart';

class AppSnackBar {
  static void showSnackBar(BuildContext context, String message) {
    var snackBar = SnackBar(
      content: Text(message),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      backgroundColor: Colors.red,
      behavior: SnackBarBehavior.floating,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
