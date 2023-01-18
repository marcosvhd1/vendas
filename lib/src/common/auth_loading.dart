import 'package:flutter/material.dart';
import 'package:vendas/src/themes/colors/colors.dart';

class AuthLoading extends StatelessWidget {
  const AuthLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 20,
      width: 20,
      child: CircularProgressIndicator(
        color: tWhiteColor,
        strokeWidth: 2,
      ),
    );
  }
}
