import 'package:flutter/material.dart';

void showMessage(BuildContext context, String message,
    {Color color = Colors.red}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: color,
    content: Text(message),
    duration: const Duration(seconds: 2),
    behavior: SnackBarBehavior.floating,
  ));
}
