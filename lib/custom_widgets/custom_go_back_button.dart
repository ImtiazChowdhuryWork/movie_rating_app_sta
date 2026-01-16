import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_rating_application/gen/colors.gen.dart';

class CustomGoBackButton extends StatelessWidget {
  final void Function()? onTap;
  const CustomGoBackButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:
          onTap ??
          () {
            Get.back();
          },

      child: Icon(Icons.arrow_back_ios_new_rounded, color: AppColors.cFFFFFF),
    );
  }
}
