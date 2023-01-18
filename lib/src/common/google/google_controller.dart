import 'package:get/get.dart';
import 'package:vendas/src/constants/get_snackbar.dart';
import 'package:vendas/src/repository/auth_repository.dart';

class GoogleController extends GetxController {
  static GoogleController get to => Get.find<GoogleController>();

  final authRepo = Get.find<AuthRepository>();

  RxBool isLoading = false.obs;

  Future<void> handleSignInWithGoogle() async {
    isLoading.value = true;
    String? error = await authRepo.signInWithGoogle();
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
