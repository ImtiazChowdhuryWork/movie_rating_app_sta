import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_rating_application/constants/text_font_style.dart';
import 'package:movie_rating_application/gen/assets.gen.dart';
import 'package:movie_rating_application/gen/colors.gen.dart';
import 'package:movie_rating_application/helper/ui_helpers.dart';

class WmrTabContentCard extends StatelessWidget {
  final String imageUrl;
  final int itemIndex;
  final String contentName;
  final double rating;
  final int releaseDate;
  const WmrTabContentCard({
    super.key,
    required this.imageUrl,
    required this.itemIndex,
    required this.contentName,
    required this.rating,
    required this.releaseDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: AppColors.c1a3248,
        color: AppColors.c1a3248,
        borderRadius: BorderRadius.circular(10.r),
      ),
      padding: EdgeInsets.all(10.sp),
      child: Row(
        children: [
          ///----------->>> Section : Content : Image
          ClipRRect(
            borderRadius: BorderRadius.circular(8.r),
            child: Image.asset(
              imageUrl,
              width: 56.w,
              height: 98.h,
              fit: BoxFit.cover,
            ),
          ),
          UIHelper.horizontalSpace(8.w),

          ///------->>> Section : Content Details
          /**
           ///---->>> Item Number
           ///---->>> Content Name
           ///----->>> Total Ratings
           ///------->>> Release Date
           */
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('01', style: TextFontStyle.headline16w600cFDFDFDStyleLora),
              UIHelper.verticalSpace(8.h),

              Expanded(
                child: SizedBox(
                  width: 0.25.sw,
                  child: Text(
                    contentName,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextFontStyle.headline14w400cFDFDFDStyleLora,
                  ),
                ),
              ),
              UIHelper.verticalSpace(8.h),

              Row(
                children: [
                  SvgPicture.asset(Assets.icons.filledRatingIcon),
                  UIHelper.horizontalSpace(6.w),

                  Text(
                    rating.toString(),
                    style: TextFontStyle.headline12w400cFDFDFDStyleLora,
                  ),
                  UIHelper.horizontalSpace(8.w),

                  Container(
                    width: 4.w,
                    height: 4.h,
                    decoration: BoxDecoration(
                      color: AppColors.cFFFFFF,
                      shape: BoxShape.circle,
                    ),
                  ),
                  UIHelper.horizontalSpace(8.w),

                  Text(
                    releaseDate.toString(),
                    style: TextFontStyle.headline12w400cFDFDFDStyleLora,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
