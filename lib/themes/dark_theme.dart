import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromRGBO(5, 8, 27, 1),
  ),
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    background: Color.fromRGBO(5, 8, 27, 1),
    primary: Color.fromRGBO(3, 32, 62, 1),
    secondary: Color.fromRGBO(1, 92, 170, 1),
    outline: Color.fromRGBO(66, 188, 243, 1),
    tertiary: Color.fromRGBO(230, 249, 255, 1),
    surface: Color.fromRGBO(5, 147, 211, 1),
    shadow: Color.fromRGBO(98, 99, 98, 1),
    scrim: Color.fromRGBO(196, 196, 196, 1),
  ),
  useMaterial3: true,
);
