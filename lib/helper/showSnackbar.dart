import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String message) {
  final isDarkTheme = Theme.of(context).brightness == Brightness.dark;
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message,
          style: TextStyle(color: isDarkTheme ? Colors.white : Colors.black)),
      backgroundColor: isDarkTheme
          ? Colors.grey[800]
          : Colors.grey[300], // Light theme color
    ),
  );
}
