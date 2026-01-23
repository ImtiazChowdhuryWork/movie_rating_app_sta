import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_rating_application/features/auth/reset_password/presentation/reset_password_screen.dart';
import 'package:movie_rating_application/features/auth/sign_in/presentation/sign_in_screen.dart';
import 'package:movie_rating_application/features/auth/sign_up_screen/presentation/sign_up_screen.dart';

import '../features/auth/forgot_password/presentation/forgot_password_screen.dart';
import '../features/auth/otp_validation/presentation/otp_validation_screen.dart';
import '../features/home/binding/home_screen_binding.dart';
import '../features/home/presentation/home_screen.dart';
import '../features/welcome/presentation/welcome_screen.dart';

class Routes {
  static const String welcomeScreen = '/';
  static const String signInScreen = '/sign_in_screen';
  static const String signUpScreen = '/sign_up_screen';
  static const String forgotPasswordScreen = '/forgot_password_screen';
  static const String otpValidationScreen = '/otp_validation_screen';
  static const String resetPasswordScreen = '/reset_password_screen';
  static const String homeScreen = '/home_screen';

  static final appRoutes = [
    ///Splash Screen
    GetPage(
      name: welcomeScreen,
      page: () => WelcomeScreen(),
      transition: _transition(),
      customTransition: _customTransition(),
      transitionDuration: _duration(),
    ),

    ///Sign In Screen
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      transition: _transition(),
      customTransition: _customTransition(),
      transitionDuration: _duration(),
    ),

    ///Sign Up Screen
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      transition: _transition(),
      customTransition: _customTransition(),
      transitionDuration: _duration(),
    ),

    ///ForgotPassword Screen
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      transition: _transition(),
      customTransition: _customTransition(),
      transitionDuration: _duration(),
    ),

    ///Verify OTP Screen
    GetPage(
      name: otpValidationScreen,
      page: () => OtpValidationScreen(),
      transition: _transition(),
      customTransition: _customTransition(),
      transitionDuration: _duration(),
    ),

    ///Verify OTP Screen
    GetPage(
      name: resetPasswordScreen,
      page: () => ResetPasswordScreen(),
      transition: _transition(),
      customTransition: _customTransition(),
      transitionDuration: _duration(),
    ),

    ///Home Screen
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      binding: HomeScreenBinding(),
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
