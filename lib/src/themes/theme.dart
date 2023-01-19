import 'package:flutter/material.dart';
import 'package:vendas/src/themes/widgets/appbar_theme.dart';
import 'package:vendas/src/themes/widgets/elevated_button_theme.dart';
import 'package:vendas/src/themes/widgets/outlined_button_theme.dart';
import 'package:vendas/src/themes/widgets/text_form_field_theme.dart';
import 'package:vendas/src/themes/widgets/text_theme.dart';

class TTheme {
  TTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTextTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.elevatedButtonTheme,
    appBarTheme: TAppBarTheme.appBarTheme,
    inputDecorationTheme: TTextFormFieldTheme.inputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.elevatedButtonTheme,
    appBarTheme: TAppBarTheme.appBarTheme,
    inputDecorationTheme: TTextFormFieldTheme.inputDecorationTheme,
  );
}
