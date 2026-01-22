import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:movie_rating_application/constants/app_list.dart';
import 'package:movie_rating_application/custom_widgets/custom_elevated_button.dart';
import 'package:movie_rating_application/features/onboarding/data/controller/onboarding_screen_controller.dart';
import 'package:movie_rating_application/features/onboarding/presentation/widgets/onboarding_wdiget_screen_one.dart';
import 'package:movie_rating_application/helper/ui_helpers.dart';

import '../../../custom_widgets/app_logo_widget.dart';
import '../../../custom_widgets/custom_go_back_button.dart';
import '../../../gen/colors.gen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    OnboardingScreenController controller = Get.put(
      OnboardingScreenController(),
    );
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(UIHelper.kDefaulutPadding()),
          child: Column(
            children: [
              ///-------------->>> Go Back Button And App Logo Section
              Row(
                children: [
                  Obx(() {
                    return controller.index.value == 0
                        ? SizedBox.shrink()
                        : CustomGoBackButton(
                            onTap: () {
                              controller.goToPreviousPage();
                            },
                          );
                  }),
                  UIHelper.horizontalSpace(8.w),
                  AppLogoWidget(),
                ],
              ),

              Obx(() {
                return UIHelper.verticalSpace(
                  controller.index.value == 0 || controller.index.value == 1
                      ? 96.h
                      : controller.index.value == 2 ||
                            controller.index.value == 3
                      ? 33.h
                      : 0,
                );
              }),

              ///---------------->>> Onboarding Widget
              Expanded(
                child: PageView.builder(
                  controller: controller.pageViewController,
                  itemCount: AppList.onboardingList.length,
                  onPageChanged: (index) {
                    controller.updateIndex(value: index);
                  },
                  itemBuilder: (context, index) {
                    return AppList.onboardingList[index];
                  },
                ),
              ),

              Obx(() {
                return UIHelper.verticalSpace(
                  controller.index.value == 0 || controller.index.value == 1
                      ? 50.h
                      : controller.index.value == 2 ||
                            controller.index.value == 3
                      ? 30.h
                      : 0,
                );
              }),

              ///----------------->>> Page Index Indicator
              Obx(() {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    AppList.onboardingList.length,
                    (dotIndex) => Container(
                      width: controller.index.value == dotIndex ? 20.w : 10.w,
                      height: 10.h,
                      margin: EdgeInsets.symmetric(horizontal: 4.w),
                      decoration: BoxDecoration(
                        color: controller.index.value == dotIndex
                            ? AppColors.cc53412
                            : AppColors.cFFFFFF,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                );
              }),
              UIHelper.verticalSpace(40.h),

              ///-------------->>> Continue Button
              Obx(() {
                return CustomElevatedButton(
                  onTap: () {
                    controller.goToNextPage();
                  },
                  buttonTitle:
                      controller.index.value ==
                          AppList.onboardingList.length - 1
                      ? "Get Started"
                      : "Continue",
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
