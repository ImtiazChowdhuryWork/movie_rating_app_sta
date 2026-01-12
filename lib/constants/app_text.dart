import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../gen/colors.gen.dart';

class TextFontStyle {
  TextFontStyle._();

  static final headline12w500cfefefeStyleQuicksand = TextStyle(
    fontFamily: 'Quicksand',
    fontFamilyFallback: const ['Quicksand', 'Lora'],
    color: AppColors.cfefefe,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
  );
}
