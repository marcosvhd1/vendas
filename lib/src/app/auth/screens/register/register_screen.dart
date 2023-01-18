import 'package:flutter/material.dart';
import 'package:vendas/src/app/auth/screens/register/widgets/register_form.dart';
import 'package:vendas/src/app/auth/screens/register/widgets/register_header.dart';
import 'package:vendas/src/constants/sizes.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(tDftSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              RegisterHeader(),
              RegisterForm(),
            ],
          ),
        ),
      ),
    );
  }
}
