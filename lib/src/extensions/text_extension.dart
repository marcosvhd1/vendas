import 'package:flutter/material.dart';

extension TTextStyle on BuildContext {
  TextStyle get h1 => Theme.of(this).textTheme.headline1!;
  TextStyle get h2 => Theme.of(this).textTheme.headline2!;
  TextStyle get h3 => Theme.of(this).textTheme.headline3!;
  TextStyle get h4 => Theme.of(this).textTheme.headline4!;
  TextStyle get h5 => Theme.of(this).textTheme.headline5!;
  TextStyle get h6 => Theme.of(this).textTheme.headline6!;
  TextStyle get b1 => Theme.of(this).textTheme.bodyText1!;
  TextStyle get b2 => Theme.of(this).textTheme.bodyText2!;
}