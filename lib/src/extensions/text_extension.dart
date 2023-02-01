import 'package:flutter/material.dart';

extension TTextStyle on BuildContext {
  TextStyle get dl => Theme.of(this).textTheme.displayLarge!;
  TextStyle get dm => Theme.of(this).textTheme.displayMedium!;
  TextStyle get ds => Theme.of(this).textTheme.displaySmall!;
  TextStyle get hm => Theme.of(this).textTheme.headlineMedium!;
  TextStyle get hs => Theme.of(this).textTheme.headlineSmall!;
  TextStyle get tl => Theme.of(this).textTheme.titleLarge!;
  TextStyle get bl => Theme.of(this).textTheme.bodyLarge!;
  TextStyle get bm => Theme.of(this).textTheme.bodyMedium!;
}