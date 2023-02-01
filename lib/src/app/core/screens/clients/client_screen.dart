import 'package:flutter/material.dart';
import 'package:vendas/src/constants/sizes.dart';

class ClientScreen extends StatelessWidget {
  const ClientScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(tDftSpace),
          child: Column(
            children: const [
            ],
          ),
        ),
      ),
    );
  }
}