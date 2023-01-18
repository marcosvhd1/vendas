import 'package:flutter/material.dart';
import 'package:vendas/src/common/logo_image.dart';
import 'package:vendas/src/extensions/index.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const LogoImage(),
        Text('Bem-vindo', style: context.h2),
        Text('Faça suas vendas de forma ágil!', style: context.b2),
      ],
    );
  }
}
