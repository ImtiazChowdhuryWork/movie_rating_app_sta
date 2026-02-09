import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants/text_font_style.dart';
import '../../../../custom_widgets/contentent_sub_details_widget.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../helper/ui_helpers.dart';

class SearchResultContentShowingWidget extends StatelessWidget {
  final String contentImage;
  final void Function()? onTap;
  final double rating;
  final double progressBarRating;
  final String contentTitle;
  final String contentType;
  final String contentStarted;
  final String contentEnded;
  final String contentDuration;

  const SearchResultContentShowingWidget({
    super.key,
    required this.contentImage,
    this.onTap,
    required this.rating,
    required this.progressBarRating,
    required this.contentTitle,
    required this.contentType,
    required this.contentStarted,
    required this.contentEnded,
    required this.contentDuration,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 135.w,
      decoration: BoxDecoration(
        color: AppColors.scaffoldBackgroundColor,
        border: Border.all(color: AppColors.cFFFFFF),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(8.r),
          bottomLeft: Radius.circular(8.r),
          bottomRight: Radius.circular(8.r),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///----------->>>>Section : Content Image
          Stack(
            clipBehavior: Clip.none,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(topRight: Radius.circular(8.r)),
                child: Image.asset(
                  height: 170.h,
                   width: 1.sw,
                   fit: BoxFit.cover,
                   contentImage
                   ),
              ),

              ///--------->>> Section : Book Mark
              Positioned(
                left: 0.w,
                top: 0.h,
                child: InkWell(
                  onTap: onTap,
                  child: SvgPicture.asset(Assets.icons.bookmarkIconWithPlus),
                ),
              ),

              ///--------->>> Section : Circular Progress Bar
              Positioned(
                right: 10.w,
                bottom: -10.h,
                child: Container(
                  height: 32.h,
                  width: 32.w,
                  decoration: BoxDecoration(
                    color: AppColors.c531507,
                    shape: BoxShape.circle,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CircularProgressIndicator(
                        value: progressBarRating,
                        strokeWidth: 4.sp,
                        color: AppColors.cb20000,
                        backgroundColor: AppColors.c531507,
                      ),
                      Text(
                        rating.toString(),
                        style:
                            TextFontStyle.headline12w400cFDFDFDStyleQuicksand,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          UIHelper.verticalSpace(16.h),

          ///--------->>> Section : Content Title
          Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: Text(
              contentTitle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextFontStyle.headline14w600cFDFDFDStyleLora,
            ),
          ),
          UIHelper.verticalSpace(8.h),

          /**
                ///-------->>> Section : Content Type
                ///-------->>> Section : Content Release Date
                ///-------->>> Section : Content Duration
                */
          ContentSubDetails(
            contentType: '  $contentType',
            contentStarted: contentStarted,
            contentEnded: contentEnded,
            contentDuration: '$contentDuration  ',
          ),
          UIHelper.verticalSpace(8.h),
        ],
      ),
    );
  }
}
