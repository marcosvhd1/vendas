import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendas/src/app/auth/controllers/reset_password_controller.dart';
import 'package:vendas/src/common/email_textfield.dart';
import 'package:vendas/src/constants/sizes.dart';
import 'package:vendas/src/extensions/index.dart';

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ResetPasswordController());
    return Column(
      children: [
        SizedBox(height: tDftSpace),
        EmailTextField(controller: controller.email),
        SizedBox(height: tDftSpace * 1.5),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            child: const Text('ENVIAR'),
            onPressed: () => controller.resetPassword(),
          ),
        ),
        SizedBox(height: tDftSpace),
        TextButton(
          onPressed: () => controller.resetPassword(),
          child: Text.rich(
            TextSpan(
              text: 'Não recebeu o email? ',
              style: context.b2,
              children: const [
                TextSpan(
                  text: 'Reenviar',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
