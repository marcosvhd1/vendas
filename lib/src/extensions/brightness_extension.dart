import 'package:flutter/material.dart';

extension TBrightness on BuildContext {
  bool get darkMode => MediaQuery.of(this).platformBrightness == Brightness.dark;
}