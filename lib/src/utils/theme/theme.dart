import 'package:flutter/material.dart';
import 'package:task1/src/utils/theme/widget_theme/elevated_button_theme.dart';
import 'package:task1/src/utils/theme/widget_theme/outlined_button_theme.dart';
import 'package:task1/src/utils/theme/widget_theme/text_theme.dart';

class TAppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TTextTheme.darkTextTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TTextTheme.lightTextTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darktOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darktElevatedButtonTheme,
  );
}
