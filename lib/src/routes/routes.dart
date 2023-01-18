import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:vendas/src/app/auth/login/login_screen.dart';
import 'package:vendas/src/app/auth/register/register_screen.dart';
import 'package:vendas/src/app/auth/welcome/welcome_screen.dart';
import 'package:vendas/src/app/core/home/screens/home.dart';

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
    GetPage(name: "/configs", page: () => Container()),
  ];
}
