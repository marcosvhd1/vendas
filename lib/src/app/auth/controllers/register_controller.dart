import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendas/src/app/auth/controllers/user_controller.dart';
import 'package:vendas/src/app/auth/models/user_model.dart';
import 'package:vendas/src/constants/get_snackbar.dart';
import 'package:vendas/src/repository/auth_repository.dart';

class RegisterController extends GetxController {
  static RegisterController get to => Get.find<RegisterController>();

  final authRepo = Get.find<AuthRepository>();
  final userController = Get.find<UserController>();

  final formKey = GlobalKey<FormState>();
  final fullName = TextEditingController();
  final email = TextEditingController();
  final phoneNo = TextEditingController();
  final password = TextEditingController();

  RxBool isPasswordObscure = true.obs;
  RxBool isLoading = false.obs;

  void handleChangePassVisibility() {
    isPasswordObscure.value = !isPasswordObscure.value;
  }

  Future<void> handleCreateUser() async {
    if (formKey.currentState!.validate()) {
      isLoading.value = true;
      String? error = await authRepo.createUser(email.text, password.text);
      isLoading.value = false;

      if (error == null) {
        await userController.createUser(UserModel(
          email: email.text,
          fullName: fullName.text.isEmpty ? null : fullName.text,
          phoneNo: phoneNo.text.isEmpty ? null : phoneNo.text,
        ));
      }

      showSnackbar(
        type: error == null ? "sucess" : "error",
        title: error == null ? "Sucesso" : "Erro",
        message: error ?? "Usuário registrado com sucesso.",
      );
    }
  }
}
