import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendas/src/config/firebase_options.dart';
import 'package:vendas/src/repository/auth_repository.dart';

class Config {
  static Future<void> initConfigs() async {
    WidgetsFlutterBinding.ensureInitialized();

    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
        .then((value) => Get.put(AuthRepository())
    );
  }
}
