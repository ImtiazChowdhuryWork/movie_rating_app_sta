import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_rating_application/constants/text_font_style.dart';
import 'package:movie_rating_application/gen/assets.gen.dart';
import 'package:movie_rating_application/helper/ui_helpers.dart';

class OnboardingWidget extends StatelessWidget {
  final String titleMiniText;
  final String titleBoldText;
  final String bodyImage;
  final String subTitle;
  const OnboardingWidget({
    super.key,
    required this.titleMiniText,
    required this.titleBoldText,
    required this.bodyImage,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: titleMiniText,
                style: TextFontStyle.headline32w400cFDFDFDStyleFranchise,
              ),
              TextSpan(
                text: titleBoldText,
                style: TextFontStyle.headline45w400cFDFDFDStyleFranchise,
              ),
            ],
          ),
        ),
        UIHelper.verticalSpace(56.h),

        Image.asset(
          bodyImage,
          height: 254.h,
          width: 254.w,
          fit: BoxFit.contain,
        ),
        UIHelper.verticalSpace(56.h),

        Expanded(
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style: TextFontStyle.headline12w500cfefefeStyleQuicksand,
          ),
        ),
      ],
    );
  }
}
