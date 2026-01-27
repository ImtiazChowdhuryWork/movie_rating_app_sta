import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/text_font_style.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../helper/ui_helpers.dart';

class ContentCard extends StatelessWidget {
  final String imageUrl;
  final double imageHeight;
  final double imageWidth;
  final String contentName;
  final String contentType;
  final String contentStarted;
  final String contentEnded;
  final String contentDuration;
  final int contentTagsListLength;
  final List<String> contentTagList;

  const ContentCard({
    super.key,
    required this.imageUrl,
    required this.contentName,
    required this.contentType,
    required this.contentStarted,
    required this.contentEnded,
    required this.contentDuration,
    required this.contentTagsListLength,
    required this.contentTagList,
    this.imageHeight = 167,
    this.imageWidth = 167,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.sp,
      child: Container(
        width: 187.w,
        decoration: BoxDecoration(
          color: AppColors.c1a3248,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///------------>>> Section : Image & Ratings progress
            Container(
              width: imageWidth.w,
              height: imageHeight.h,
              margin: EdgeInsets.all(10.sp),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.c516374),
                borderRadius: BorderRadius.circular(8.r),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(imageUrl),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(right: 20.w, bottom: 18.h),
                child: Align(
                  alignment: Alignment.bottomRight,
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
                          value: 0.7,
                          strokeWidth: 4.sp,
                          color: AppColors.cb20000,
                          backgroundColor: AppColors.c531507,
                        ),
                        Text(
                          '8.7',
                          style:
                              TextFontStyle.headline12w400cFDFDFDStyleQuicksand,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            UIHelper.verticalSpace(6.h),

            ///------------>>> Section : Text : Stanger Things
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Text(
                contentName,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextFontStyle.headline16w600cFDFDFDStyleLora,
              ),
            ),
            UIHelper.verticalSpace(8.h),

            /**
                         ///-------->>> Section : Content Type
                         ///-------->>> Section : Content Release Date
                         ///-------->>> Section : Content Duration
                         */
            SingleChildScrollView(
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
            ),
            UIHelper.verticalSpace(8.h),

            SizedBox(
              height: 25.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) =>
                    UIHelper.horizontalSpace(8.w),
                itemCount: contentTagsListLength,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.cFDFDFD),
                      borderRadius: BorderRadius.circular(24.r),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      contentTagList[index],
                      style: TextFontStyle.headline12w400f8f8f8StyleLora,
                    ),
                  );
                },
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: UIHelper.verticalSpace(14.h),
            ),
          ],
        ),
      ),
    );
  }
}
