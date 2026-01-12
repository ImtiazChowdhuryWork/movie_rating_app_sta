import 'package:flutter/material.dart';
import 'package:movie_rating_application/constants/text_font_style.dart';
import 'package:movie_rating_application/gen/colors.gen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.cb20000,
        title: Text(
          "Onboarding Screen",
          style: TextFontStyle.headline14w400cFFFFFFStyleQuicksand,
        ),
      ),
    );
  }
}
