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

  static final headline14w400cFFFFFFStyleQuicksand = TextStyle(
    fontFamily: 'Quicksand',
    fontFamilyFallback: const ['Quicksand', 'Lora'],
    color: AppColors.cFFFFFF,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  static final headline16w500cFFFFFFStyleQuicksand = TextStyle(
    fontFamily: 'Quicksand',
    fontFamilyFallback: const ['Quicksand', 'Lora'],
    color: AppColors.cFFFFFF,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );

  static final headline16w500cFFFFFFStyleLora = TextStyle(
    fontFamily: 'Lora',
    fontFamilyFallback: const ['Lora', 'Quicksand'],
    color: AppColors.cFFFFFF,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );
  static final headline32w400cFDFDFDStyleFranchise = TextStyle(
    fontFamily: 'Franchise',
    fontFamilyFallback: const ['Lora', 'Quicksand'],
    color: AppColors.cFDFDFD,
    fontSize: 32.sp,
    fontWeight: FontWeight.w400,
  );
  static final headline45w400cFDFDFDStyleFranchise = TextStyle(
    fontFamily: 'Franchise',
    fontFamilyFallback: const ['Lora', 'Quicksand'],
    color: AppColors.cFDFDFD,
    fontSize: 45.sp,
    fontWeight: FontWeight.w400,
  );
}
