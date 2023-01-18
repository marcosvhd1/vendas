import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendas/src/constants/sizes.dart';
import 'package:vendas/src/repository/auth_repository.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    final authRepo = Get.find<AuthRepository>();
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(
          icon: const Icon(Icons.exit_to_app_rounded),
          onPressed: () => authRepo.signOut(),
        )],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(tDftSpace),
          child: Column(),
        ),
      ),
    );
  }
}