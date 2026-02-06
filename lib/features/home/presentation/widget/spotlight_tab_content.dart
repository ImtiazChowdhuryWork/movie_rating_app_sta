import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_rating_application/constants/text_font_style.dart';
import 'package:movie_rating_application/features/home/presentation/widget/popular_tab_content.dart';
import 'package:movie_rating_application/features/home/presentation/widget/recently_added_tab_content.dart';
import 'package:movie_rating_application/features/home/presentation/widget/trending_tab_content_widget.dart';
import 'package:movie_rating_application/gen/assets.gen.dart';
import 'package:movie_rating_application/gen/colors.gen.dart';
import 'package:movie_rating_application/helper/ui_helpers.dart';

class SpotlightTabContent extends StatefulWidget {
  const SpotlightTabContent({super.key});

  @override
  State<SpotlightTabContent> createState() => _SpotlightTabContentState();
}

class _SpotlightTabContentState extends State<SpotlightTabContent>
    with TickerProviderStateMixin {
  late TabController spotLightMoviesTabController;

  @override
  void initState() {
    spotLightMoviesTabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.center,

          child: TabBar(
            controller: spotLightMoviesTabController,
            labelStyle: TextFontStyle.headline14w600cFDFDFDStyleLora,
            unselectedLabelColor: AppColors.cC4C4C4,
            dividerColor: Colors.transparent,
            indicatorColor: AppColors.cc53412,
            
            labelPadding: EdgeInsets.only(left: 16.w),
            isScrollable: true,
            tabs: [
              ///--------->>> Section : Trending Tab
              Tab(
                child: Row(
                  children: [
                    SvgPicture.asset(Assets.icons.trendingIcon),
                    UIHelper.horizontalSpace(8.w),
                    Text('Trending'),
                  ],
                ),
              ),

              ///--------->>> Section : Popular Tab
              Tab(
                child: Row(
                  children: [
                    SvgPicture.asset(Assets.icons.whiteFireIcon),
                    UIHelper.horizontalSpace(8.w),
                    Text('Popular'),
                  ],
                ),
              ),

              ///--------->>> Section : Recently Added
              Tab(
                child: Row(
                  children: [
                    SvgPicture.asset(Assets.icons.addIcon),
                    UIHelper.horizontalSpace(8.w),
                    Text('Recently Added'),
                  ],
                ),
              ),
            ],
          ),
        ),

        UIHelper.verticalSpace(10.h),

        SizedBox(
          height: 0.7.sh,
          child: TabBarView(
            controller: spotLightMoviesTabController,
            children: [
              TrendingTabContentWidget(),
              PopularTabContent(),
              RecentlyAddedTabContent(),
            ],
          ),
        ),
      ],
    );
  }
}
