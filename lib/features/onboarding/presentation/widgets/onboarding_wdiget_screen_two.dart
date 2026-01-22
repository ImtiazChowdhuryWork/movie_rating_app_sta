import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/text_font_style.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../helper/ui_helpers.dart';

class OnboardingWdigetScreenTwo extends StatelessWidget {
  const OnboardingWdigetScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ///-------->>> Section : Header
          UIHelper.horizontalSpace(1.sw),
          Text(
            'ONE SIMPLE SCALE',
            textAlign: TextAlign.center,
            style: TextFontStyle.headline32w400cFDFDFDStyleFranchise,
          ),
          UIHelper.verticalSpace(56.h),

          ///------------>>> Section : Body Image
          Image.asset(
            Assets.images.onboardingBodyImageTwo.path,
            height: 254.h,
            width: 254.w,
            fit: BoxFit.contain,
          ),
          UIHelper.verticalSpace(56.h),

          Text(
            'Higher stars = more messaging \nLower stars = story first',
            textAlign: TextAlign.center,
            style: TextFontStyle.headline16w400cFDFDFDStyleLora,
          ),
        ],
      ),
    );
  }
}
