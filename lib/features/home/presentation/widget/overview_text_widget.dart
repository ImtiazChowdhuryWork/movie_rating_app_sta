import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/text_font_style.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../helper/ui_helpers.dart';

class OverviewTextWidget extends StatelessWidget {
  const OverviewTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          Assets.images.startIconWithWhiteBg.path,
          width: 24.w,
          height: 24.h,
          fit: BoxFit.cover,
        ),
        UIHelper.horizontalSpace(8.w),
        Text(
          'OVERVIEW',
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
