import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:movie_rating_application/gen/colors.gen.dart';
import 'package:movie_rating_application/helper/ui_helpers.dart';
import 'package:movie_rating_application/routes/routes.dart';

import '../../../../constants/text_font_style.dart';
import '../../../../custom_widgets/app_logo_widget.dart';
import '../../../../custom_widgets/custom_elevated_button.dart';
import '../../../../custom_widgets/custom_text_form_field.dart';
import '../../../../helper/logger_util.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(UIHelper.kDefaulutPadding()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///---------->>> Section : AppLogo
              AppLogoWidget(),
              Spacer(),

              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 0.5.sw,
                  child: Text(
                    'Forgot your password?',
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
                  'Enter the email associated with your account',
                  textAlign: TextAlign.center,
                  style: TextFontStyle.headline14w600cC4C4C4StyleLora,
                ),
              ),
              UIHelper.verticalSpace(32.h),

              ///----------->>> Section : Email Field
              Text(
                "Email Address",
                style: TextFontStyle.headline14w600cFDFDFDStyleLora,
              ),
              UIHelper.verticalSpace(12.h),

              CustomFormField(hintText: 'Enter Your Email Address'),
              UIHelper.verticalSpace(32.h),

              ///----------->>> Section : Get OTP Button
              CustomElevatedButton(
                onTap: () {
                  LoggerUtils.debug('Get OTP Button Taped!');
                  Get.toNamed(Routes.otpValidationScreen);
                },
                buttonTitle: 'Get OTP',
              ),

              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
