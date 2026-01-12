import 'package:flutter/material.dart';
import 'package:movie_rating_application/constants/text_font_style.dart';
import 'package:movie_rating_application/gen/colors.gen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.cb20000,
        title: Text(
          "Sign In Screen",
          style: TextFontStyle.headline16w500cFFFFFFStyleQuicksand,
        ),
      ),
    );
  }
}
