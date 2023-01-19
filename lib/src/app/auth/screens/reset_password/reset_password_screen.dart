import 'package:flutter/material.dart';
import 'package:vendas/src/app/auth/screens/reset_password/widgets/reset_password_form.dart';
import 'package:vendas/src/app/auth/screens/reset_password/widgets/reset_password_header.dart';
import 'package:vendas/src/constants/sizes.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(tDftSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                ResetPasswordHeader(),
                ResetPasswordForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
