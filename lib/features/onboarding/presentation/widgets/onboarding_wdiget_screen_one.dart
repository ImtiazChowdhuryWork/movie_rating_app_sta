import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_rating_application/constants/text_font_style.dart';
import 'package:movie_rating_application/gen/assets.gen.dart';
import 'package:movie_rating_application/gen/colors.gen.dart';
import 'package:movie_rating_application/helper/ui_helpers.dart';

class OnboardingWdigetScreenOne extends StatelessWidget {
  const OnboardingWdigetScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ///-------->>> Section : Header
          Text(
            'WATCH WHAT YOU WANT - NOT WHAT PREACHES',
            textAlign: TextAlign.center,
            style: TextFontStyle.headline32w400cFDFDFDStyleFranchise,
          ),
          UIHelper.verticalSpace(56.h),

          ///------------>>> Section : Body Image
          Image.asset(
            Assets.images.onboardingBodyImageOne.path,
            height: 254.h,
            width: 254.w,
            fit: BoxFit.contain,
          ),
          UIHelper.verticalSpace(56.h),

          Text(
            'See how much messaging is in a movie or TV show before you press play.',
            textAlign: TextAlign.center,
            style: TextFontStyle.headline16w400cFDFDFDStyleLora,
          ),
        ],
      ),
    );
  }
}
