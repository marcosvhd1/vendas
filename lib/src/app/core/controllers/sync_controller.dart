import 'package:get/get.dart';
import 'package:vendas/src/repository/auth_repository.dart';

class SyncController extends GetxController {
  static SyncController get to => Get.find<SyncController>();

  final auth = Get.find<AuthRepository>();

  RxBool isLoading = false.obs;
  Rx<String?> userName = "".obs;

  @override
  void onReady() {
    userName.value = auth.firebaseUser.value?.displayName;

    super.onReady();
  }

  void toggle() {
    isLoading.value = !isLoading.value;
  }
}
