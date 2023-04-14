import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    accentColor: Colors.blueAccent,
    scaffoldBackgroundColor: Colors.white,
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.blueGrey[800],
    accentColor: Colors.blueAccent,
    scaffoldBackgroundColor: Colors.grey[850],
  );
}
