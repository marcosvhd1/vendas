import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vendas/src/themes/colors/colors.dart';

class TTextTheme {
  static TextTheme lightTextTheme = GoogleFonts.montserratTextTheme(
    const TextTheme(
      displayLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: tDarkColor),
      displayMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: tDarkColor),
      displaySmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: tDarkColor),
      headlineMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: tDarkColor),
      titleLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: tDarkColor),
      bodyLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: tDarkColor),
      bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: tDarkColor),
    ),
  );
  static TextTheme darkTextTheme = GoogleFonts.montserratTextTheme(
    const TextTheme(
      displayLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: tWhiteColor),
      displayMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: tWhiteColor),
      displaySmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: tWhiteColor),
      headlineMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: tWhiteColor),
      titleLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: tWhiteColor),
      bodyLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: tWhiteColor),
      bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: tWhiteColor),
    ),
  );
}
