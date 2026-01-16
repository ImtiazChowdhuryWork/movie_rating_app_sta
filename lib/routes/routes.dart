import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_rating_application/features/auth/sign_in/presentation/sign_in_screen.dart';

import '../features/welcome/presentation/welcome_screen.dart';

class Routes {
  static const String welcomeScreen = '/';
  static const String sginInScreen = '/sign_in_screen';

  static final appRoutes = [
    ///Splash Screen
    GetPage(
      name: welcomeScreen,
      page: () => WelcomeScreen(),
      transition: _transition(),
      customTransition: _customTransition(),
      transitionDuration: _duration(),
    ),

    ///Splash Screen
    GetPage(
      name: sginInScreen,
      page: () => SignInScreen(),
      transition: _transition(),
      customTransition: _customTransition(),
      transitionDuration: _duration(),
    ),
  ];
}

/// Custom ultra-fast fade for Android
class FastFadeTransition extends CustomTransition {
  @override
  Widget buildTransition(
    BuildContext context,
    Curve? curve,
    Alignment? alignment,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return FadeTransition(opacity: animation, child: child);
  }
}

/// Utility method to apply platform-aware transitions
Transition _transition() =>
    Platform.isAndroid ? Transition.fade : Transition.cupertino;

CustomTransition? _customTransition() =>
    Platform.isAndroid ? FastFadeTransition() : null;

Duration _duration() => Platform.isAndroid
    ? const Duration(milliseconds: 1)
    : const Duration(milliseconds: 300);
