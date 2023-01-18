import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vendas/src/themes/colors/colors.dart';

class TTextTheme {
  static TextTheme lightTextTheme = GoogleFonts.montserratTextTheme(
    const TextTheme(
      headline1: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: tDarkColor),
      headline2: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: tDarkColor),
      headline3: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: tDarkColor),
      headline4: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: tDarkColor),
      headline6: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: tDarkColor),
      bodyText1: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: tDarkColor),
      bodyText2: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: tDarkColor),
    ),
  );
  static TextTheme darkTextTheme = GoogleFonts.montserratTextTheme(
    const TextTheme(
      headline1: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: tWhiteColor),
      headline2: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: tWhiteColor),
      headline3: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: tWhiteColor),
      headline4: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: tWhiteColor),
      headline6: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: tWhiteColor),
      bodyText1: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: tWhiteColor),
      bodyText2: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: tWhiteColor),
    ),
  );
}
