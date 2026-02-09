import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/text_font_style.dart';
import '../gen/assets.gen.dart';
import '../gen/colors.gen.dart';
import '../helper/ui_helpers.dart';

class SectionTypeWidget extends StatelessWidget {
  final String title;
  final MainAxisAlignment? mainAxisAlignment;
  const SectionTypeWidget({super.key, required this.title, this.mainAxisAlignment});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
      children: [
        Image.asset(
          Assets.images.startIconWithWhiteBg.path,
          width: 24.w,
          height: 24.h,
          fit: BoxFit.cover,
        ),
        UIHelper.horizontalSpace(8.w),
        Text(
          title,
          style: TextFontStyle.headline24w400c1a3248StyleFranchise.copyWith(
            color: AppColors.cFDFDFD,
          ),
        ),
        UIHelper.horizontalSpace(8.w),
        Image.asset(
          Assets.images.startIconWithWhiteBg.path,
          width: 24.w,
          height: 24.h,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
