import 'package:flutter/material.dart';
import 'package:todolist_app/theme/color_palette.dart';

ThemeData customLightThemeData() {
  return ThemeData.light().copyWith(
    primaryColor: lightHintColor,
    primaryColorLight: lightHintColor,
    hintColor: lightHintColor,
    inputDecorationTheme: InputDecorationTheme(
      border: UnderlineInputBorder(
        borderSide: BorderSide(
          color: lightHintColor,
        ),
      ),
    ),
  );
}
