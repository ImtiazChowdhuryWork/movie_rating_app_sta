import 'package:flutter/material.dart';
import 'package:movie_rating_application/constants/text_font_style.dart';
import 'package:movie_rating_application/gen/colors.gen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.cb20000,
        title: Text(
          "Welcome Screen,",
          style: TextFontStyle.headline16w500cFFFFFFStyleQuicksand,
        ),
      ),
    );
  }
}
