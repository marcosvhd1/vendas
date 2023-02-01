import 'package:flutter/material.dart';
import 'package:vendas/src/common/logo_image.dart';
import 'package:vendas/src/extensions/index.dart';

class RegisterHeader extends StatelessWidget {
  const RegisterHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const LogoImage(),
        Text('Suba a Bordo', style: context.dm),
        Text('Crie sua conta e inicie sua jornada!', style: context.bm),
      ],
    );
  }
}
