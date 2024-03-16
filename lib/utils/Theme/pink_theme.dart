import 'package:flutter/material.dart';

class PinkTheme {
  ThemeData? pinkTheme = ThemeData(
    colorScheme: pinkColorScheme,
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
    appBarTheme: AppBarTheme(color: pinkColorScheme.primary),
  );
}

const pinkColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFFe45884),
    onPrimary: Color(0xFFe45884),
    secondary: Color(0xFFE1E1E1),
    onSecondary: Color(0xFFF1F1F1),
    error: Color(0xFFe45884),
    onError: Color(0xFFe45884),
    background: Color(0xFFFFFFFF),
    onBackground: Color(0xFFE9E9E9),
    surface: Color(0xFFe45884),
    onSurface: Color(0xFF7B7B7B),
    shadow: Colors.black,
    errorContainer: Color(0xFFE1E1E1));
