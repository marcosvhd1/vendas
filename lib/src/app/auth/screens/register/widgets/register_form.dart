import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendas/src/app/auth/controllers/register_controller.dart';
import 'package:vendas/src/common/auth_loading.dart';
import 'package:vendas/src/common/email_textfield.dart';
import 'package:vendas/src/common/google/google_button.dart';
import 'package:vendas/src/common/password_textfield.dart';
import 'package:vendas/src/constants/sizes.dart';
import 'package:vendas/src/extensions/index.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegisterController());
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          SizedBox(height: tDftSpace),
          TextFormField(
            keyboardType: TextInputType.name,
            controller: controller.fullName,
            decoration: InputDecoration(
              prefixIcon: Container(
                margin: const EdgeInsets.only(left: 10),
                child: const Icon(Icons.person_rounded),
              ),
              labelText: 'Nome Completo',
              hintText: 'Nome Completo',
            ),
          ),
          SizedBox(height: tDftSpace),
          EmailTextField(controller: controller.email),
          SizedBox(height: tDftSpace),
          TextFormField(
            keyboardType: TextInputType.phone,
            controller: controller.phoneNo,
            decoration: InputDecoration(
              prefixIcon: Container(
                margin: const EdgeInsets.only(left: 10),
                child: const Icon(Icons.smartphone_rounded),
              ),
              labelText: 'N° Celular',
              hintText: 'N° Celular',
            ),
          ),
          SizedBox(height: tDftSpace),
          Obx(
            () => PasswordTextField(
              controller: controller.password,
              visibleContent: controller.isPasswordObscure.value,
              onPressed: () => controller.handleChangePassVisibility(),
            ),
          ),
          SizedBox(height: tDftSpace * 1.5),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              child: Obx(
                () => controller.isLoading.value
                    ? const AuthLoading()
                    : const Text('CADASTRAR'),
              ),
              onPressed: () => controller.handleCreateUser(),
            ),
          ),
          SizedBox(height: tDftSpace),
          const Text('OU'),
          SizedBox(height: tDftSpace),
          const GoogleButton(),
          SizedBox(height: tDftSpace),
          TextButton(
            onPressed: () => Get.offAndToNamed("/login"),
            child: Text.rich(
              TextSpan(
                text: 'Já possui um cadastro? ',
                style: context.bm,
                children: const [
                  TextSpan(
                    text: 'Acessar',
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
