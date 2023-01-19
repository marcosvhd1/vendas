import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendas/src/app/auth/controllers/reset_password_controller.dart';
import 'package:vendas/src/common/email_textfield.dart';
import 'package:vendas/src/common/logo_image.dart';
import 'package:vendas/src/constants/sizes.dart';
import 'package:vendas/src/extensions/index.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ResetPasswordController());
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(tDftSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const LogoImage(),
                Text('Informe seu email', style: context.h2),
                const Text('Você receberá um link para atualizar sua senha.'),
                SizedBox(height: tDftSpace * 1.5),
                EmailTextField(controller: controller.email),
                SizedBox(height: tDftSpace * 1.5),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text('ENVIAR'),
                    onPressed: () => controller.resetPassword(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
