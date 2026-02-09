import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/text_font_style.dart';
import '../gen/colors.gen.dart';
import '../helper/ui_helpers.dart';



class ContentSubDetails extends StatelessWidget {
  final String contentType;
  final String contentStarted;
  final String contentEnded;
  final String contentDuration;
  const ContentSubDetails({
    super.key, required this.contentType, required this.contentStarted, required this.contentEnded, required this.contentDuration,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Text(
            contentType,
            style: TextFontStyle.headline12w400cFDFDFDStyleLora,
          ),
          UIHelper.horizontalSpace(8.w),
    
          Container(
            height: 6.h,
            width: 6.w,
            decoration: BoxDecoration(
              color: AppColors.cd9d9d9,
              shape: BoxShape.circle,
            ),
          ),
          UIHelper.horizontalSpace(8.w),
    
          Text(
            '$contentStarted-$contentEnded',
            style: TextFontStyle.headline12w400cFDFDFDStyleLora,
          ),
          UIHelper.horizontalSpace(8.w),
    
          Container(
            height: 6.h,
            width: 6.w,
            decoration: BoxDecoration(
              color: AppColors.cd9d9d9,
              shape: BoxShape.circle,
            ),
          ),
          UIHelper.horizontalSpace(8.w),
    
          Text(
            contentDuration,
            style: TextFontStyle.headline12w400cFDFDFDStyleLora,
          ),
        ],
      ),
    );
  }
}
