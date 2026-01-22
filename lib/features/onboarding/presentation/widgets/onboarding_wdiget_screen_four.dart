import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_rating_application/features/onboarding/presentation/widgets/onboarding_four_trailing_widget.dart';

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
            Assets.images.onboardingBodyImageFour.path,
            height: 254.h,
            width: 254.w,
            fit: BoxFit.contain,
          ),
          UIHelper.verticalSpace(56.h),
          UIHelper.horizontalSpace(1.sw),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox.shrink(),
              OnboardingFourTrailingWidget(
                title: 'Community + AI-assisted ratings',
              ),
              SizedBox.shrink(),
            ],
          ),
          Row(
            children: [
              UIHelper.horizontalSpace(0.14.sw),
              OnboardingFourTrailingWidget(title: 'No censorship, no bans'),
            ],
          ),
          Row(
            children: [
              UIHelper.horizontalSpace(0.14.sw),
              OnboardingFourTrailingWidget(
                title: 'Decide what you watch',
                isSizedBoxUsed: false,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
