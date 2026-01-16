import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:movie_rating_application/gen/colors.gen.dart';
import 'package:movie_rating_application/helper/ui_helpers.dart';

import '../../../../constants/text_font_style.dart';
import '../../../../custom_widgets/app_logo_widget.dart';
import '../../../../custom_widgets/custom_elevated_button.dart';
import '../../../../custom_widgets/custom_text_form_field.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../helper/logger_util.dart';
import '../../../../routes/routes.dart';
import '../../../../custom_widgets/social_media_button_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(UIHelper.kDefaulutPadding()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///---------->>> Section : AppLogo
              AppLogoWidget(),
              UIHelper.verticalSpace(32.h),

              ///--------->>>> Section : Text -> Welcome Back!
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Welcome To Woke Movie",
                  style: TextFontStyle.headline48w400cFDFDFDStyleFranchise,
                ),
              ),
              UIHelper.verticalSpace(8.h),

              Text(
                'Let’s discover the best movies that match your style and values!',
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

                  ///Section : -----------------///Text-> Agree to the Terms & Conditions///----------------
                  Text(
                    "Agree to the Terms & Conditions ",
                    style: TextFontStyle.headline14w400cFDFDFDStyleLora,
                  ),
                ],
              ),
              UIHelper.verticalSpace(32.h),

              ///----------->>> Section : Sign Up Button
              CustomElevatedButton(
                onTap: () {
                  LoggerUtils.debug('👾👾👾Signup Button Taped!');
                },
                buttonTitle: 'Signup',
              ),
              UIHelper.verticalSpace(56.h),

              ///----------->>> Section : Social Media Button
              SocialMediaButtonWidget(
                googleOnTap: () {
                  LoggerUtils.info("🤖🤖🤖🤖🤖Google Social Button Taped!");
                },
                faceBookOnTap: () {
                  LoggerUtils.debug("🫥🫥🫥🫥Google Social Button Taped!");
                },

                title: 'Or',
              ),
              UIHelper.verticalSpace(56.h),

              ///Section : -----------------///Text -> New User?///----------------
              ///Section : -----------------///TextButton -> SignUp///----------------
              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Already have an account? ",
                        style: TextFontStyle.headline14w400cFDFDFDStyleLora,
                      ),
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: InkWell(
                          onTap: () {
                            LoggerUtils.debug("Button Taped : SignUp!");
                            Get.toNamed(Routes.signInScreen);
                          },
                          child: Text(
                            "Login",
                            style: TextFontStyle.headline16w500cc53412StyleLora,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              UIHelper.verticalSpace(24.h),
            ],
          ),
        ),
      ),
    );
  }
}
