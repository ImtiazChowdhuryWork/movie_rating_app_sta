import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:movie_rating_application/constants/text_font_style.dart';
import 'package:movie_rating_application/custom_widgets/custom_elevated_button.dart';
import 'package:movie_rating_application/custom_widgets/custom_text_form_field.dart';
import 'package:movie_rating_application/features/auth/sign_in/presentation/widgets/social_media_button_widget.dart';
import 'package:movie_rating_application/gen/assets.gen.dart';
import 'package:movie_rating_application/gen/colors.gen.dart';
import 'package:movie_rating_application/helper/logger_util.dart';
import 'package:movie_rating_application/helper/ui_helpers.dart';

import '../../../../custom_widgets/app_logo_widget.dart';
import '../../../../routes/routes.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Padding(
        padding: EdgeInsets.all(UIHelper.kDefaulutPadding()),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///---------->>> Section : AppLogo
              AppLogoWidget(),
              UIHelper.verticalSpace(24.h),

              ///--------->>>> Section : Text -> Welcome Back!
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Welcome Back!",
                  style: TextFontStyle.headline48w400cFDFDFDStyleFranchise,
                ),
              ),
              UIHelper.verticalSpace(8.h),

              Text(
                'Let’s get you back to find the best movies that match your style and values!',
                textAlign: TextAlign.center,
                style: TextFontStyle.headline14w600cC4C4C4StyleLora,
              ),
              UIHelper.verticalSpace(32.h),

              ///----------->>> Section : Email Field
              Text(
                "Email Address",
                style: TextFontStyle.headline14w600cFDFDFDStyleLora,
              ),
              UIHelper.verticalSpace(12.h),

              CustomFormField(hintText: 'Enter Your Email Address'),
              UIHelper.verticalSpace(24.h),

              ///----------->>> Section : Email Field
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

              ///Section : -----------------///Checkbox///----------------
              ///Section : -----------------///Text-> Remember Me///----------------
              ///Section : -----------------///TextButton -> ForgotPassword///----------------
              Row(
                children: [
                  ///Section : -----------------///Checkbox///----------------
                  GestureDetector(
                    onTap: () {
                      LoggerUtils.debug('🤡🤡🤡Check Box Taped!');
                    },
                    child: SvgPicture.asset(Assets.icons.checkBoxSelectedIcon),
                  ),
                  UIHelper.horizontalSpace(4.w),

                  ///Section : -----------------///Text-> Remember Me///----------------
                  Text(
                    "Remember Me",
                    style: TextFontStyle.headline14w400cA3A3A3StyleLora,
                  ),
                  Spacer(),

                  ///Section : -----------------///TextButton -> ForgotPassword///----------------
                  InkWell(
                    onTap: () {
                      LoggerUtils.debug("ForgotPassword Button Taped!");
                      // Get.toNamed(Routes.forgotPasswordScreen);
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextFontStyle.headline14w600cc53412StyleLora,
                    ),
                  ),
                ],
              ),
              UIHelper.verticalSpace(32.h),

              ///----------->>> Section : Login Button
              CustomElevatedButton(onTap: () {}, buttonTitle: 'Login'),
              UIHelper.verticalSpace(56.h),

              ///----------->>> Section : Social Media Button
              SocialMediaButtonWidget(title: 'Or'),
            ],
          ),
        ),
      ),
    );
  }
}
