import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_rating_application/constants/text_font_style.dart';
import 'package:movie_rating_application/gen/assets.gen.dart';
import 'package:movie_rating_application/helper/ui_helpers.dart';

class OnboardingFourTrailingWidget extends StatelessWidget {
  final String title;
  final bool isSizedBoxUsed;
  const OnboardingFourTrailingWidget({
    super.key,
    required this.title,
    this.isSizedBoxUsed = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(Assets.icons.starIcon),
            UIHelper.horizontalSpace(6.w),

            Text(title, style: TextFontStyle.headline16w600cFDFDFDStyleLora),
          ],
        ),
        isSizedBoxUsed ? UIHelper.verticalSpace(24.h) : SizedBox.shrink(),
      ],
    );
  }
}
