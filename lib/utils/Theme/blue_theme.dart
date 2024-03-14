import 'package:flutter/material.dart';

class BlueTheme {
  ThemeData? blueTheme = ThemeData(
    colorScheme: blueColorScheme,
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
    appBarTheme: AppBarTheme(color: blueColorScheme.primary),
  );
}

const blueColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF40b9db),
    onPrimary: Color(0xFF40b9db),
    secondary: Color(0xFFE1E1E1),
    onSecondary: Color(0xFFF1F1F1),
    error: Color(0xFF40b9db),
    onError: Color(0xFF40b9db),
    background: Color(0xFFFFFFFF),
    onBackground: Color(0xFFE9E9E9),
    surface: Color(0xFF40b9db),
    onSurface: Color(0xFF7B7B7B),
    shadow: Colors.black
);
