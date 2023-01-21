import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:vendas/src/constants/get_snackbar.dart';
import 'package:vendas/src/repository/auth_repository.dart';

class ResetPasswordController extends GetxController {
  static ResetPasswordController get to => Get.find<ResetPasswordController>();

  final authRepo = Get.find<AuthRepository>();

  final email = TextEditingController();

  Future<void> resetPassword() async {
    String? error = await authRepo.resetPassword(email.text);

    Get.back();
    
    showSnackbar(
      type: error == null ? "sucess" : "error",
      title: error == null ? "Sucesso" : "Erro",
      message: error ?? "Email de redefinição enviado.",
    );
  }
}
