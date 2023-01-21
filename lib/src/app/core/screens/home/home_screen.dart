import 'package:flutter/material.dart';
import 'package:vendas/src/app/core/screens/home/widgets/drawer.dart';
import 'package:vendas/src/extensions/index.dart';
import 'package:vendas/src/themes/colors/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      drawer: const TDrawer(),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.sort_rounded, color: context.darkMode ? tWhiteColor : tDarkColor),
          onPressed: () => scaffoldKey.currentState?.openDrawer(),
        ),
      ),
    );
  }
}
