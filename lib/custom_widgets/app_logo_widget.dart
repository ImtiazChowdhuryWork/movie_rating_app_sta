import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';

class AppLogoWidget extends StatelessWidget {
  const AppLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.images.appMiniIcon.path,
      height: 40,
      width: 70,
      fit: BoxFit.contain,
    );
  }
}
