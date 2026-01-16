import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:movie_rating_application/constants/app_list.dart';
import 'package:movie_rating_application/custom_widgets/custom_elevated_button.dart';
import 'package:movie_rating_application/features/onboarding/data/controller/onboarding_screen_controller.dart';
import 'package:movie_rating_application/features/onboarding/presentation/widgets/onboarding_widget.dart';
import 'package:movie_rating_application/gen/assets.gen.dart';
import 'package:movie_rating_application/helper/ui_helpers.dart';

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
                  Image.asset(
                    Assets.images.appMiniIcon.path,
                    height: 40,
                    width: 70,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
              UIHelper.verticalSpace(40.h),

              ///---------------->>> Onboarding Widget
              Expanded(
                child: PageView.builder(
                  controller: controller.pageViewController,
                  itemCount: AppList.onboardingList.length,
                  onPageChanged: (index) {
                    controller.updateIndex(value: index);
                  },
                  itemBuilder: (context, index) {
                    var data = AppList.onboardingList[index];
                    return OnboardingWidget(
                      titleMiniText: data.titleMiniText,
                      titleBoldText: data.titleBoldText,
                      bodyImage: data.bodyImage,
                      subTitle: data.subTitle,
                    );
                  },
                ),
              ),
              UIHelper.verticalSpace(158.h),

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
