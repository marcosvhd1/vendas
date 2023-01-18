import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendas/src/repository/auth_repository.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authRepo = Get.find<AuthRepository>();
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => authRepo.signOut(),
            icon: const Icon(Icons.exit_to_app),
          )
        ],
      ),
    );
  }
}
