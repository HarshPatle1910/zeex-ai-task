import 'package:flutter/material.dart';
import 'package:task1/src/utils/theme/widget_theme/text_theme.dart';

class TAppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TTextTheme.darkTextTheme,
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TTextTheme.lightTextTheme,
  );
}
