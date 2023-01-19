import 'package:get/get.dart';
import 'package:vendas/src/app/auth/models/user_model.dart';
import 'package:vendas/src/constants/get_snackbar.dart';
import 'package:vendas/src/repository/user_repository.dart';

class UserController extends GetxController {
  static UserController get to => Get.find<UserController>();

  final userRepo = Get.put(UserRepository());

  Future<void> createUser(UserModel user) async {
    String? error = await userRepo.createUser(user);

    if (error != null) {
      showSnackbar(
        type: "error",
        title: "Erro",
        message: error,
      );
    }
  }

  Future<void> updateUserData(UserModel user) async {
    String? error = await userRepo.updateUserData(user);

    showSnackbar(
      type: error != null ? "error" : "sucess",
      title: error != null ? "Erro" : "Sucesso",
      message: error ?? "Usuário alterado com sucesso.",
    );
  }

  Future<UserModel?> getUserDetails(String email) async {
    UserModel? user = await userRepo.getUserDetails(email);

    if (user == null) {
      showSnackbar(
        type: "error",
        title: "Erro",
        message: "Algo deu errado.",
      );
    }

    return user;
  }

  Future<List<UserModel>?> getAllUsers() async {
    List<UserModel>? users = await userRepo.getAllUsers();

    if (users == null) {
      showSnackbar(
        type: "error",
        title: "Erro",
        message: "Algo deu errado.",
      );
    }

    return users;
  }
}
