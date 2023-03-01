import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendas/src/extensions/brightness_extension.dart';
import 'package:vendas/src/themes/colors/colors.dart';

class TBackButton extends StatelessWidget {
  const TBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Get.back(),
      icon: Icon(
        Icons.arrow_back_ios_new_rounded,
        color: context.darkMode ? tWhiteColor : tDarkColor,
      ),
    );
  }
}
