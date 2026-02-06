import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:movie_rating_application/features/home/presentation/widget/content_card.dart';

import '../../../../constants/app_list.dart';
import '../../../../constants/text_font_style.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../helper/ui_helpers.dart';
import '../../data/controller/home_screen_controller.dart';


class PopularTabContent extends StatelessWidget {
  const PopularTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    HomeScreenController homeController = Get.find<HomeScreenController>();
    return Obx(() {
      // Filter content based on selected category
      final filteredContent = homeController.popularTabSelectedCategoryType.value.isEmpty || homeController.popularTabSelectedCategoryType.value == 'all'
          ? AppList.contentList
          : AppList.contentList.where((content) => 
              content.contentType == homeController.popularTabSelectedCategoryType.value)
            .toList();
      
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
                return Obx(() {
                  final isSelected = data.contentType == 
                      homeController.popularTabSelectedCategoryType.value;
                  return InkWell(
                    onTap: () {
                      homeController.setPopularTabSelectedCategoryType(
                        categoryName: data.contentType,
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      decoration: BoxDecoration(
                        color: isSelected ? AppColors.cc53412 :
                             AppColors.cFDFDFD.withAlpha(50),
                        border: 
                        
                        isSelected ? Border(
                          bottom: BorderSide(color: AppColors.cb20000)
                        ) : 
                        Border.all(
                          color: AppColors.cFDFDFD,
                        ),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Text(
                        data.contentType,
                        style: isSelected
                            ? TextFontStyle.headline14w600cc53412StyleLora.copyWith(
                                color: Colors.white,
                              )
                            : TextFontStyle.headline14w400cfefefeStyleLora.copyWith(fontWeight: FontWeight.w500),
                      ),
                    ),
                  );
                });
              },
            ),
          ),
          UIHelper.verticalSpace(10.h),

          if (filteredContent.isEmpty)
            Expanded(
              child: Center(
                child: Text(
                  'No content available for this category',
                  style: TextFontStyle.headline12w600cFDFDFDStyleLora,
                ),
              ),
            )
          else
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.w),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.w,
                    mainAxisSpacing: 10.h,
                    childAspectRatio: 0.62,
                  ),
                  itemCount: filteredContent.length,
                  itemBuilder: (context, index) {
                    final content = filteredContent[index];
                    return ContentCard(
                      imageUrl: content.imageUrl,
                      imageWidth: 1.sw,
                      contentName: content.contentName,
                      contentType: content.contentType,
                      contentStarted: content.contentLifeCycleStarted,
                      contentEnded: content.contentLifeCycleEnded,
                      contentDuration: content.contentDuration,
                      contentTagsListLength: content.contentTagsList.length,
                      contentTagList: content.contentTagsList,
                    );
                  },
                ),
              ),
            ),
        ],
      );
    });
  }
}