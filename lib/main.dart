import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendas/src/config/config.dart';
import 'package:vendas/src/routes/routes.dart';
import 'package:vendas/src/themes/theme.dart';

void main() async {
  await Config.initConfigs();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Vendas',
      theme: TTheme.lightTheme,
      darkTheme: TTheme.darkTheme,
      themeMode: ThemeMode.system,
      getPages: Routes.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}