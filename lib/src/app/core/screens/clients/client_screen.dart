import 'package:flutter/material.dart';
import 'package:vendas/src/common/back_button.dart';
import 'package:vendas/src/constants/sizes.dart';
import 'package:vendas/src/extensions/index.dart';

class ClientScreen extends StatelessWidget {
  const ClientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const TBackButton(),
        title: Text("Clientes", style: context.hm),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(tDftSpace),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }
}
