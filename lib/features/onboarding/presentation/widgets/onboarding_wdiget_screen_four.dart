import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/text_font_style.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../helper/ui_helpers.dart';

class OnboardingWdigetScreenFour extends StatelessWidget {
  const OnboardingWdigetScreenFour({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ///-------->>> Section : Header
          Text(
            'NO LECTURES. JUST CLARITY.',
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
