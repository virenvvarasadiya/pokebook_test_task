import 'package:flutter/material.dart';

class YellowTheme {
  ThemeData? yellowTheme = ThemeData(
    colorScheme: yellowColorScheme,
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
    appBarTheme: AppBarTheme(color: yellowColorScheme.primary),
  );
}

const yellowColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFFdca62c),
    onPrimary: Color(0xFFdca62c),
    secondary: Color(0xFFE1E1E1),
    onSecondary: Color(0xFFF1F1F1),
    error: Color(0xFFdca62c),
    onError: Color(0xFFdca62c),
    background: Color(0xFFFFFFFF),
    onBackground: Color(0xFFE9E9E9),
    surface: Color(0xFFdca62c),
    onSurface: Color(0xFF7B7B7B),
    shadow: Colors.black
);
