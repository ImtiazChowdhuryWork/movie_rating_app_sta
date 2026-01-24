import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:movie_rating_application/constants/app_list.dart';
import 'package:movie_rating_application/constants/text_font_style.dart';
import 'package:movie_rating_application/custom_widgets/custom_text_form_field.dart';
import 'package:movie_rating_application/features/home/presentation/widget/appbar_section_widget.dart';
import 'package:movie_rating_application/features/home/presentation/widget/content_card.dart';
import 'package:movie_rating_application/features/home/presentation/widget/overview_text_widget.dart';
import 'package:movie_rating_application/gen/assets.gen.dart';
import 'package:movie_rating_application/gen/colors.gen.dart';
import 'package:movie_rating_application/helper/ui_helpers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Container(
        height: 1.sh,
        width: 1.sw,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(Assets.images.backgroundImage.path),
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(UIHelper.kDefaulutPadding()),
            child: Column(
              children: [
                ///------------>>> Section : Appbar
                AppbarSectionWidget(),
                UIHelper.verticalSpace(20.h),

                ///--------->>> Section : Horizontal Add
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(8.r),
                  child: Image.asset(
                    Assets.images.addImageOne.path,
                    width: 1.sw,
                    height: 0.060.sh,
                    fit: BoxFit.contain,
                  ),
                ),
                UIHelper.verticalSpace(16.h),

                ///-------------->>> Section : Searchbar
                CustomFormField(
                  fillColor: AppColors.c0e1c28,
                  prefixIcon: SvgPicture.asset(Assets.icons.searchIcon),
                  hintText: 'Search',
                  hintTextStyle: TextFontStyle.headline16w400cC4C4C4StyleLora,
                ),
                UIHelper.verticalSpace(16.h),

                ///-------------->>> Section : Overview
                OverviewTextWidget(),
                UIHelper.verticalSpace(16.h),

                ///------------>>> Section : OverView Contents Card
                SizedBox(
                  height: 318.h,
                  child: ListView.separated(
                    itemCount: AppList.contentList.length,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) =>
                        UIHelper.horizontalSpace(10.w),

                    itemBuilder: (context, index) {
                      var data = AppList.contentList[index];

                      return ContentCard(
                        imageUrl: data.imageUrl,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
