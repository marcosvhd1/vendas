import 'package:flutter/material.dart';
import 'package:get/get.dart';

showSnackbar({String type = 'sucess', required String title, required String message}) {
  return Get.snackbar(
    title,
    message,
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: type == 'sucess' ? Colors.green.withOpacity(0.1) : Colors.red.withOpacity(0.1),
    colorText: type == 'sucess' ? Colors.green : Colors.red,
    margin: const EdgeInsets.all(10),
  );
}
