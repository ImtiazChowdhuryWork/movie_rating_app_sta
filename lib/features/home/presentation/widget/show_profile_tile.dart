import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_rating_application/constants/text_font_style.dart';
import 'package:movie_rating_application/helper/ui_helpers.dart';

class ShowProfileTile extends StatelessWidget {
  final String title;
  final String icon;
  const ShowProfileTile({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(icon),
        UIHelper.horizontalSpace(10.w),

        Text(title, style: TextFontStyle.headline12w400cFDFDFDStyleQuicksand),
        UIHelper.horizontalSpace(10.w),
      ],
    );
  }
}
