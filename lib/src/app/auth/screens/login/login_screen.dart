import 'package:flutter/material.dart';
import 'package:vendas/src/app/auth/screens/login/widgets/login_form.dart';
import 'package:vendas/src/app/auth/screens/login/widgets/login_header.dart';
import 'package:vendas/src/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(tDftSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              LoginHeader(),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
