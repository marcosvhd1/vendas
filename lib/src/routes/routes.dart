import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendas/src/app/auth/screens/login/login_screen.dart';
import 'package:vendas/src/app/auth/screens/register/register_screen.dart';
import 'package:vendas/src/app/auth/screens/reset_password/reset_password_screen.dart';
import 'package:vendas/src/app/auth/screens/welcome/welcome_screen.dart';
import 'package:vendas/src/app/core/screens/home/home_screen.dart';

class Routes {
  static final routes = [
    GetPage(name: "/welcome", page: () => const WelcomeScreen()),
    GetPage(name: "/register", page: () => const RegisterScreen()),
    GetPage(name: "/login", page: () => const LoginScreen()),
    GetPage(name: "/", page: () => const HomeScreen()),
    GetPage(name: "/clients", page: () => Container()),
    GetPage(name: "/products", page: () => Container()),
    GetPage(name: "/sales", page: () => Container()),
    GetPage(name: "/newSale", page: () => Container()),
    GetPage(name: "/reset/password", page: () => const ResetPasswordScreen()),
    GetPage(name: "/configs", page: () => Container()),
  ];
}
