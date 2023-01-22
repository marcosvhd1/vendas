import 'package:flutter/material.dart';
import 'package:vendas/src/extensions/index.dart';
import 'package:vendas/src/themes/colors/colors.dart';

class TLoading extends StatelessWidget {
  const TLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 20,
      child: CircularProgressIndicator(
        color: context.darkMode ? tWhiteColor : tDarkSecColor,
        strokeWidth: 2,
      ),
    );
  }
}
