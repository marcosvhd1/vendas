import 'package:flutter/material.dart';
import 'package:vendas/src/common/logo_image.dart';
import 'package:vendas/src/extensions/index.dart';

class ResetPasswordHeader extends StatelessWidget {
  const ResetPasswordHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const LogoImage(),
        Text('Informe seu email', style: context.dm),
        const Text('Você receberá um link para atualizar sua senha.'),
      ],
    );
  }
}
