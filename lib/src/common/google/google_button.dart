import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendas/src/common/google/google_controller.dart';
import 'package:vendas/src/common/google/google_loading.dart';
import 'package:vendas/src/constants/images_path.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key, this.isRegister = false});

  final bool isRegister;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(GoogleController());
    return SizedBox(
      width: double.infinity,
      child: Obx(
        () => OutlinedButton.icon(
          onPressed: () => controller.handleSignInWithGoogle(),
          label: controller.isLoading.value
              ? const GoogleLoading()
              : Text(
                  isRegister ? 'CADASTRE-SE COM GOOGLE' : 'ENTRAR COM GOOGLE'),
          icon: controller.isLoading.value
              ? const SizedBox()
              : const Image(
                  image: AssetImage(googleImage),
                  width: 25,
                ),
        ),
      ),
    );
  }
}
