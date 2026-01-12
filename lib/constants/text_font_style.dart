import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../gen/colors.gen.dart';

class TextFontStyle {
  //Initialising Constractor
  TextFontStyle._();

  static final headline14w400cFFFFFFStylePoppins = TextStyle(
    fontFamily: 'Poppins',
    fontFamilyFallback: const ['Montserrat', 'Poppins'],
    color: AppColors.cFFFFFF,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  
}
