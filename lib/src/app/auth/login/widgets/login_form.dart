import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendas/src/app/auth/login/login_controller.dart';
import 'package:vendas/src/common/auth_loading.dart';
import 'package:vendas/src/common/email_textfield.dart';
import 'package:vendas/src/common/google/google_button.dart';
import 'package:vendas/src/common/password_textfield.dart';
import 'package:vendas/src/constants/sizes.dart';
import 'package:vendas/src/extensions/index.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          SizedBox(height: tDftSpace),
          EmailTextField(controller: controller.email),
          SizedBox(height: tDftSpace),
          Obx(
            () => PasswordTextField(
              controller: controller.password,
              visibleContent: controller.isPasswordObscure.value,
              onPressed: () => controller.handleChangePassVisibility(),
            ),
          ),
          SizedBox(height: tDftSpace * 0.3),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Esqueceu sua senha?'),
              ),
            ],
          ),
          SizedBox(height: tDftSpace * 0.3),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              child: Obx(
                () => controller.isLoading.value
                    ? const AuthLoading()
                    : const Text('ENTRAR'),
              ),
              onPressed: () => controller.handleSignIn(),
            ),
          ),
          SizedBox(height: tDftSpace),
          const Text('OU'),
          SizedBox(height: tDftSpace),
          const GoogleButton(),
          SizedBox(height: tDftSpace),
          TextButton(
            onPressed: () => Get.offAndToNamed("/register"),
            child: Text.rich(
              TextSpan(
                text: 'Não possui uma conta? ',
                style: context.b2,
                children: const [
                  TextSpan(
                    text: 'Cadastre-se',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
