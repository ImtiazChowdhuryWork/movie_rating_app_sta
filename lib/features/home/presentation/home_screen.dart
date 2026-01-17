import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_rating_application/custom_widgets/app_logo_widget.dart';
import 'package:movie_rating_application/gen/assets.gen.dart';
import 'package:movie_rating_application/gen/colors.gen.dart';
import 'package:movie_rating_application/helper/ui_helpers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(UIHelper.kDefaulutPadding()),
        child: SafeArea(
          child: Column(
            children: [
              ///----------->>> Section : AppBar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ///-------->>> Element : App Logo
                  AppLogoWidget(),

                  ///----------->>> Section : Search & Profile
                  Row(
                    children: [
                      ///---------->>> Element : Search
                      SvgPicture.asset(Assets.icons.notificationIcon),
                      UIHelper.horizontalSpace(10.w),

                      ///---------->>> Element : Profile
                      CircleAvatar(
                        radius: 30.r,
                        backgroundColor: AppColors.scaffoldBackgroundColor,
                        backgroundImage: AssetImage(
                          Assets.images.onboardingBodyImageOne.path,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
