import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:movie_rating_application/custom_widgets/app_logo_widget.dart';
import 'package:movie_rating_application/gen/colors.gen.dart';
import 'package:movie_rating_application/helper/ui_helpers.dart';

import '../../../../constants/text_font_style.dart';
import '../../../../custom_widgets/custom_elevated_button.dart';
import '../../../../custom_widgets/custom_text_form_field.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../helper/logger_util.dart';
import '../../../../routes/routes.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

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
              ///--------->>> Section : AppLogo Widget
              AppLogoWidget(),
              Spacer(),

              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 0.7.sw,
                  child: Text(
                    'Reset password',
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

              ///----------->>> Section : Password Field
              Text(
                "Password",
                style: TextFontStyle.headline14w600cFDFDFDStyleLora,
              ),
              UIHelper.verticalSpace(12.h),

              CustomFormField(
                hintText: 'Enter Your Password',
                suffixIcon: GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(Assets.icons.eyeOpen),
                ),
              ),
              UIHelper.verticalSpace(24.h),

              ///----------->>> Section : Confirm Password Field
              Text(
                "Confirm Password",
                style: TextFontStyle.headline14w600cFDFDFDStyleLora,
              ),
              UIHelper.verticalSpace(12.h),

              CustomFormField(
                hintText: 'Confirm Your Password',
                suffixIcon: GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(Assets.icons.eyeOpen),
                ),
              ),
              UIHelper.verticalSpace(24.h),

              ///----------->>> Section : Veerify Button
              CustomElevatedButton(
                onTap: () {
                  LoggerUtils.debug('Verify Button Taped!');
                  Get.toNamed(Routes.signInScreen);
                },
                buttonTitle: 'Reset',
              ),

              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
