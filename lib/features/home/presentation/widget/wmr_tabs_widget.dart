import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_rating_application/constants/text_font_style.dart';
import 'package:movie_rating_application/features/home/presentation/widget/wmr_tab_content_card.dart';
import 'package:movie_rating_application/gen/assets.gen.dart';
import 'package:movie_rating_application/gen/colors.gen.dart';
import 'package:movie_rating_application/helper/ui_helpers.dart';

class WmrTabsWidget extends StatefulWidget {
  const WmrTabsWidget({super.key});

  @override
  State<WmrTabsWidget> createState() => _WmrTabsWidgetState();
}

class _WmrTabsWidgetState extends State<WmrTabsWidget>
    with TickerProviderStateMixin {
  late TabController topTenWmrMoviesTabController;

  @override
  void initState() {
    topTenWmrMoviesTabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: TabBar(
            controller: topTenWmrMoviesTabController,
            indicatorSize: TabBarIndicatorSize.label,
            unselectedLabelColor: AppColors.cC4C4C4,
            labelStyle: TextFontStyle.headline14w600cFDFDFDStyleLora,
            dividerColor: Colors.transparent,
            labelPadding: EdgeInsets.only(left: 50.w),
            indicatorColor: AppColors.c667684,
            isScrollable: true,

            tabs: [
              Tab(text: 'Today'),
              Tab(text: 'Week'),
              Tab(text: 'Month'),
            ],
          ),
        ),
        UIHelper.verticalSpace(16.h),

        SizedBox(
          height: 120.h,
          width: 1.sw,
          // color: Colors.purple,
          child: TabBarView(
            controller: topTenWmrMoviesTabController,
            children: [
              ///---------->>> Section : Today Tab
              ListView.separated(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) =>
                    UIHelper.horizontalSpace(10.w),

                itemBuilder: (context, index) {
                  return Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: 194.w,
                      child: WmrTabContentCard(
                        imageUrl: Assets.images.onboardingBodyImageOne.path,
                        contentName: 'The Stranger Things Season 1',
                        itemIndex: index,
                        rating: 8.5,
                        releaseDate: 2021,
                      ),
                    ),
                  );
                },
              ),

              ///---------->>> Section : Week Tab
              ListView.separated(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) =>
                    UIHelper.horizontalSpace(10.w),

                itemBuilder: (context, index) {
                  return Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: 194.w,
                      child: WmrTabContentCard(
                        imageUrl: Assets.images.onboardingBodyImageOne.path,
                        contentName: 'The Stranger Things Season 1',
                        itemIndex: index,
                        rating: 8.5,
                        releaseDate: 2021,
                      ),
                    ),
                  );
                },
              ),

              ///---------->>> Section : Month Tab
              ListView.separated(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) =>
                    UIHelper.horizontalSpace(10.w),

                itemBuilder: (context, index) {
                  return Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: 194.w,
                      child: WmrTabContentCard(
                        imageUrl: Assets.images.onboardingBodyImageOne.path,
                        contentName: 'The Stranger Things Season 1',
                        itemIndex: index,
                        rating: 8.5,
                        releaseDate: 2021,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
