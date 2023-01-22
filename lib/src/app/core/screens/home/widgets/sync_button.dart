import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendas/src/app/core/controllers/sync_controller.dart';
import 'package:vendas/src/common/loading.dart';
import 'package:vendas/src/extensions/index.dart';
import 'package:vendas/src/themes/colors/colors.dart';

class SyncButton extends StatelessWidget {
  const SyncButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SyncController());
    return Obx(() => controller.isLoading.value
        ? IconButton(
            onPressed: () => controller.toggle(),
            icon: const TLoading()
          )
        : IconButton(
            onPressed: () => controller.toggle(),
            icon: Icon(
              Icons.sync_rounded,
              color: context.darkMode ? tWhiteColor : tDarkColor,
            ),
          ));
  }
}
