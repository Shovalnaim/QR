import 'package:flutter/material.dart';

Widget createElevatedButton(String text, VoidCallback onPressed) {
  return ElevatedButton(
    onPressed: onPressed,
    child: Text(text),
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.pinkAccent),
    ),
  );
}
