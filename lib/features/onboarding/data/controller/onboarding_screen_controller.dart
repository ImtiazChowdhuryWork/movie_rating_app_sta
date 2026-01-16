/// OnboardingScreenController.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreenController extends GetxController {
  PageController pageViewController = PageController();
  RxInt index = 0.obs;

  void updateIndex({required int value}) {
    index.value = value;
  }

  void goToNextPage() {
    if (index.value < 2) {
      // Assuming you have 2 pages (0 and 1)
      pageViewController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // Navigate to next screen
      Get.offAllNamed('/login'); // or your next screen
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
