import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:vendas/src/constants/get_snackbar.dart';
import 'package:vendas/src/repository/auth_repository.dart';

class LoginController extends GetxController {
  static LoginController get to => Get.find<LoginController>();

  final authRepo = Get.find<AuthRepository>();

  final formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();

  RxBool isPasswordObscure = true.obs;
  RxBool isLoading = false.obs;

  handleChangePassVisibility() {
    isPasswordObscure.value = !isPasswordObscure.value;
  }

  Future<void> handleSignIn() async {
    if (formKey.currentState!.validate()) {
      isLoading.value = true;
      String? error = await authRepo.signIn(email.text, password.text);
      isLoading.value = false;

      if (error != null) {
        showSnackbar(
          type: "error",
          title: "Erro",
          message: error,
        );
      }
    }
  }
}
