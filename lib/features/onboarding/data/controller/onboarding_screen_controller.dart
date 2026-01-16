/// OnboardingScreenController.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_rating_application/routes/routes.dart';

import '../../../../constants/app_list.dart';

class OnboardingScreenController extends GetxController {
  PageController pageViewController = PageController();
  RxInt index = 0.obs;

  void updateIndex({required int value}) {
    index.value = value;
  }

  void goToNextPage() {
    // Check if we're on the last page
    if (index.value < AppList.onboardingList.length - 1) {
      // There's a next page available
      pageViewController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // We're on the last page, navigate to sign-in
      Get.offAllNamed(Routes.signInScreen);
    }
  }

  void goToPreviousPage() {
    if (index.value == 1) {
      pageViewController.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  @override
  void onClose() {
    pageViewController.dispose();
    super.onClose();
  }
}
