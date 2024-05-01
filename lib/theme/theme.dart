import 'package:flutter/material.dart';

// light theme
const mainLight = Colors.white;
const secondaryLight = Colors.grey;
const backgroundLight = Colors.amber;
const mainColorDark = Colors.black;

final customLightTheme = ThemeData.light().copyWith(
  primaryColor: mainLight,
  primaryColorDark: mainColorDark,
  primaryColorLight: secondaryLight,
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: mainLight,
    onPrimary: backgroundLight,
    secondary: mainColorDark,
    onSecondary: mainColorDark,
    error: Colors.red,
    onError: Colors.red,
    background: backgroundLight,
    onBackground: backgroundLight,
    surface: backgroundLight,
    onSurface: backgroundLight,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: backgroundLight,
    foregroundColor: mainLight,
  ),
  dividerTheme: const DividerThemeData(
    color: Colors.transparent,
  ),
  textTheme: const TextTheme(
    titleSmall: TextStyle(
      color: mainColorDark,
    ),
    titleMedium: TextStyle(
      color: mainColorDark,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    titleLarge: TextStyle(
      color: mainColorDark,
      fontSize: 32,
      fontWeight: FontWeight.w600,
    ),
  ),
  iconTheme: const IconThemeData(
    color: mainColorDark,
  ),
);
