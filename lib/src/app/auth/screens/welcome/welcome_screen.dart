import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendas/src/common/logo_image.dart';
import 'package:vendas/src/constants/sizes.dart';
import 'package:vendas/src/extensions/index.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final portrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(tDftSpace),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LogoImage(height: portrait ? height * 0.1 : height * 0.2),
              Column(
                children: [
                  Text('Gerencie suas vendas', style: context.dm),
                  Text('Vamos começar sua jornada!', style: context.bm),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      child: const Text('ACESSAR'),
                      onPressed: () => Get.toNamed("/login"),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: OutlinedButton(
                      child: const Text('CADASTRAR'),
                      onPressed: () => Get.toNamed("/register"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
