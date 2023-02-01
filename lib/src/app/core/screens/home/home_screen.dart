import 'package:flutter/material.dart';
import 'package:vendas/src/app/core/screens/home/widgets/drawer.dart';
import 'package:vendas/src/app/core/screens/home/widgets/sync_button.dart';
import 'package:vendas/src/constants/sizes.dart';
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
        title: Text("Vendas", style: Theme.of(context).textTheme.headlineMedium),
        actions: const [SyncButton()],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(tDftSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Home', style: context.dm),
            ],
          ),
        ),
      ),
    );
  }
}
