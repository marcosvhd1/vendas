import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendas/src/app/core/screens/home/widgets/drawer_item.dart';
import 'package:vendas/src/common/logo_image.dart';
import 'package:vendas/src/constants/sizes.dart';
import 'package:vendas/src/repository/auth_repository.dart';

class TDrawer extends StatelessWidget {
  const TDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final authRepo = Get.find<AuthRepository>();
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(tDftSpace),
                child: const LogoImage(height: 45),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Divider(),
              ),
              DrawerItem(
                title: 'Clientes',
                icon: Icons.people_alt_rounded,
                onPress: () {},
              ),
              SizedBox(height: tDftSpace / 2),
              DrawerItem(
                title: 'Produtos',
                icon: Icons.inventory,
                onPress: () {},
              ),
              SizedBox(height: tDftSpace / 2),
              DrawerItem(
                title: 'Vendas',
                icon: Icons.manage_search_rounded,
                onPress: () {},
              ),
              SizedBox(height: tDftSpace / 2),
              DrawerItem(
                title: 'Nova venda',
                icon: Icons.add_shopping_cart_rounded,
                onPress: () {},
              ),
              SizedBox(height: tDftSpace),
              DrawerItem(
                title: 'Sair',
                icon: Icons.exit_to_app_rounded,
                endIcon: false,
                textColor: Colors.red,
                onPress: () => authRepo.signOut(),
              ),
              SizedBox(height: tDftSpace / 2),
            ],
          ),
        ),
      ),
    );
  }
}
