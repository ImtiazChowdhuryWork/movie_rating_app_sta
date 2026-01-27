import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_rating_application/constants/app_list.dart';
import 'package:movie_rating_application/constants/text_font_style.dart';
import 'package:movie_rating_application/features/home/presentation/widget/content_card.dart';
import 'package:movie_rating_application/gen/colors.gen.dart';
import 'package:movie_rating_application/helper/ui_helpers.dart';

class TrendingTabContentWidget extends StatelessWidget {
  const TrendingTabContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///------------>>>> Section : Categories
        SizedBox(
          height: 35.h,
          child: ListView.separated(
            itemCount: AppList.contentList.length,
            separatorBuilder: (context, index) =>
                UIHelper.horizontalSpace(10.w),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              var data = AppList.contentList[index];
              return Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                decoration: BoxDecoration(
                  color: AppColors.cFDFDFD.withAlpha(50),
                  border: Border.all(color: AppColors.cFDFDFD),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Text(
                  data.contentType,
                  style: TextFontStyle.headline12w600cFDFDFDStyleLora,
                ),
              );
            },
          ),
        ),
        UIHelper.verticalSpace(10.h),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.65,
              ),
              itemCount: AppList.contentList.length,
              itemBuilder: (context, index) {
                var data = AppList.contentList[index];
                return ContentCard(
                  imageUrl: data.imageUrl,
                  imageWidth: 1.sw,
                  contentName: data.contentName,
                  contentType: data.contentType,
                  contentStarted: data.contentLifeCycleStarted,
                  contentEnded: data.contentLifeCycleEnded,
                  contentDuration: data.contentDuration,
                  contentTagsListLength: data.contentTagsList.length,
                  contentTagList: data.contentTagsList,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
