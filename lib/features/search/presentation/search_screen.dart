import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_rating_application/constants/app_list.dart';
import 'package:movie_rating_application/custom_widgets/custom_go_back_button.dart';
import 'package:movie_rating_application/custom_widgets/profile_image_widget.dart';
import 'package:movie_rating_application/custom_widgets/section_type_widget.dart';
import 'package:movie_rating_application/features/search/presentation/widgets/search_result_content_showing_widget.dart';
import 'package:movie_rating_application/gen/assets.gen.dart';
import 'package:movie_rating_application/gen/colors.gen.dart';
import 'package:movie_rating_application/helper/logger_util.dart';
import 'package:movie_rating_application/helper/ui_helpers.dart';

import '../../../constants/text_font_style.dart';
import '../../../custom_widgets/contentent_sub_details_widget.dart';
import '../../../custom_widgets/custom_text_form_field.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Container(
        width: 1.sw,
        height: 1.sh,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(Assets.images.backgroundImage.path),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(UIHelper.kDefaulutPadding()),
            child: Column(
              children: [
                ///--------->>>> Section : AppBar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ///------->>> Section Back Button
                    CustomGoBackButton(),

                    ////-------->>> Section : AppBar Text
                    SectionTypeWidget(title: "Search Result"),

                    ///---------->>> Section : Profile Image Section
                    SizedBox.shrink(),
                  ],
                ),
                UIHelper.verticalSpace(20.h),

                ///-------------->>> Section : Search Bar
                CustomFormField(
                  hintText: 'Search',
                  isEnabled: false,
                  fillColor: AppColors.c0e1c28,
                  borderColor: Colors.transparent,
                  prefixIcon: SvgPicture.asset(Assets.icons.searchIcon),
                  hintTextStyle: TextFontStyle.headline16w400cC4C4C4StyleLora,
                ),
                UIHelper.verticalSpace(20.h),

                ///---------->>> Section : Search Result
                SectionTypeWidget(
                  title: "RECOMMENDED",
                  mainAxisAlignment: MainAxisAlignment.start,
                  ),
                UIHelper.verticalSpace(20.h),

                ///--------->>> Search Result Content Showing Widget
                Expanded(
                  child: GridView.builder(
                    itemCount: AppList.contentList.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10.w,
                      crossAxisSpacing: 10.h,
                      childAspectRatio: 0.70,
                  
                      ),
                    itemBuilder: (context,index){
                      var data = AppList.contentList[index];
                    return SearchResultContentShowingWidget(
                    contentImage: data.imageUrl,
                    rating: data.rating,
                    progressBarRating: data.circularProgressRating,
                    contentTitle: data.contentName,
                    contentType: data.contentType,
                    contentStarted: data.contentLifeCycleStarted,
                    contentEnded: data.contentLifeCycleEnded,
                    contentDuration: data.contentDuration,
                  );
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
