import 'package:flutter/material.dart';
import 'package:vendas/src/constants/images_path.dart';
import 'package:vendas/src/constants/sizes.dart';
import 'package:vendas/src/extensions/index.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({super.key, this.height = 70});

  final double? height;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (height == 70) SizedBox(height: tDftSpace),
        SizedBox(
          height: height,
          child: Image(
            image: AssetImage(context.darkMode ? logoDarkPath : logoPath),
          ),
        ),
        if (height == 70) SizedBox(height: tDftSpace * 2),
      ],
    );
  }
}