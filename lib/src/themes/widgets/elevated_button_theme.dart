import 'package:flutter/material.dart';
import 'package:vendas/src/themes/colors/colors.dart';

class TElevatedButtonTheme {
  TElevatedButtonTheme._();

  static final elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      foregroundColor: tWhiteColor,
      backgroundColor: tPrimaryColor,
      side: const BorderSide(color: tPrimaryColor),
      padding: const EdgeInsets.symmetric(vertical: 15),
    ),
  );
}
