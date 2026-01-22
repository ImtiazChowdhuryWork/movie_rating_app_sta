import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/text_font_style.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../helper/ui_helpers.dart';

class OnboardingWdigetScreenThree extends StatelessWidget {
  const OnboardingWdigetScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ///------------>>> Section : Body Image
          Image.asset(
            Assets.images.onboardingBodyImageThree.path,
            height: 0.5.sh,
            width: 1.sw,
            fit: BoxFit.contain,
          ),
          UIHelper.verticalSpace(40.h),

          ///----------->>> Section : Trailer Text
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
