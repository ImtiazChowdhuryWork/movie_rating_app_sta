import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:movie_rating_application/custom_widgets/app_logo_widget.dart';
import 'package:movie_rating_application/gen/colors.gen.dart';
import 'package:movie_rating_application/helper/ui_helpers.dart';

import '../../../../constants/text_font_style.dart';
import '../../../../custom_widgets/custom_elevated_button.dart';
import '../../../../helper/logger_util.dart';
import '../../../../routes/routes.dart';
import 'widgets/pinput_widget.dart';

class OtpValidationScreen extends StatelessWidget {
  const OtpValidationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(UIHelper.kDefaulutPadding()),
          child: Column(
            children: [
              AppLogoWidget(),
              Spacer(),

              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 0.7.sw,
                  child: Text(
                    'Verify Your Email Address',
                    textAlign: TextAlign.center,
                    style: TextFontStyle.headline48w400cFDFDFDStyleFranchise,
                  ),
                ),
              ),
              UIHelper.verticalSpace(8.h),

              ///----------->>> Section : Text -> Enter the email associated with your account
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Please enter your verification code below to verify your email address',
                  textAlign: TextAlign.center,
                  style: TextFontStyle.headline14w600cC4C4C4StyleLora,
                ),
              ),
              UIHelper.verticalSpace(32.h),

              ///--------------->>> Pinput Widget
              PinputWidget(),
              UIHelper.verticalSpace(32.h),

              ///----------->>> Section : Veerify Button
              CustomElevatedButton(
                onTap: () {
                  LoggerUtils.debug('Verify Button Taped!');
                  Get.toNamed(Routes.resetPasswordScreen);
                },
                buttonTitle: 'Verify',
              ),

              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
