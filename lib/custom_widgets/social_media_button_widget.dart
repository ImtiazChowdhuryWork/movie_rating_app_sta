import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_rating_application/gen/colors.gen.dart';

import '../constants/text_font_style.dart';
import '../gen/assets.gen.dart';
import '../helper/ui_helpers.dart';

class SocialMediaButtonWidget extends StatelessWidget {
  final String title;
  final void Function()? faceBookOnTap;
  final void Function()? googleOnTap;
  const SocialMediaButtonWidget({
    super.key,
    required this.title,
    this.faceBookOnTap,
    this.googleOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///Section : -----------------///Text -> or login with social media///----------------
        Row(
          children: [
            Expanded(child: Divider()),
            UIHelper.horizontalSpace(10.w),

            Text(title, style: TextFontStyle.headline14w400cA3A3A3StyleLora),
            UIHelper.horizontalSpace(10.w),
            Expanded(child: Divider()),
          ],
        ),
        UIHelper.verticalSpace(24.h),

        ///Section : -----------------///Social Media Button -> Facebook//----------------
        ///Section : -----------------///Social Media Button -> Google//----------------
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ///-------->>> Section : Google Social Login Button
            InkWell(
              onTap: googleOnTap,
              child: Container(
                padding: EdgeInsets.all(10.sp),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.cC4C4C4),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(Assets.icons.googleIcon),
                    UIHelper.horizontalSpace(8.w),
                    Text(
                      'Continue with Google',
                      style: TextFontStyle.headline12w400cFDFDFDStyleQuicksand,
                    ),
                  ],
                ),
              ),
            ),
            UIHelper.horizontalSpace(24.w),

            ///-------->>> Section : FaceBook Social Login Button
            InkWell(
              onTap: faceBookOnTap,
              child: Container(
                padding: EdgeInsets.all(10.sp),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.cC4C4C4),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(Assets.icons.faceBookIcon),
                    UIHelper.horizontalSpace(8.w),
                    Text(
                      'Continue with Facebook',

                      style: TextFontStyle.headline12w400cFDFDFDStyleQuicksand,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
