import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_rating_application/constants/text_font_style.dart';
import 'package:movie_rating_application/custom_widgets/app_logo_widget.dart';
import 'package:movie_rating_application/custom_widgets/custom_text_form_field.dart';
import 'package:movie_rating_application/features/home/presentation/widget/overview_text_widget.dart';
import 'package:movie_rating_application/features/home/presentation/widget/show_profile_tile.dart';
import 'package:movie_rating_application/gen/assets.gen.dart';
import 'package:movie_rating_application/gen/colors.gen.dart';
import 'package:movie_rating_application/helper/logger_util.dart';
import 'package:movie_rating_application/helper/ui_helpers.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  OverlayEntry? _overlayEntry;
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(milliseconds: 300),
      vsync: this,
    );

    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOutBack),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOut),
    );
  }

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppLogoWidget(),
                    Row(
                      children: [
                        SvgPicture.asset(Assets.icons.notificationIcon),
                        UIHelper.horizontalSpace(10.w),
                        GestureDetector(
                          onTap: () {
                            showOverlay();
                          },
                          child: Container(
                            padding: EdgeInsets.all(1.sp),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: AppColors.cFFFFFF),
                            ),
                            child: CircleAvatar(
                              radius: 30.r,
                              backgroundColor:
                                  AppColors.scaffoldBackgroundColor,
                              backgroundImage: AssetImage(
                                Assets.images.onboardingBodyImageOne.path,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  ///---------->>> Section : Show Profile Overlay
  void showOverlay() {
    if (_overlayEntry != null) {
      hideOverlay();
      return;
    }

    final RenderBox renderBox = context.findRenderObject() as RenderBox;
    final offset = renderBox.localToGlobal(Offset.zero);

    _overlayEntry = OverlayEntry(
      builder: (context) {
        return Stack(
          children: [
            // Background with fade animation
            Positioned.fill(
              child: FadeTransition(
                opacity: _fadeAnimation,
                child: GestureDetector(
                  onTap: () {
                    hideOverlay();
                  },
                  behavior: HitTestBehavior.translucent,
                  child: Container(color: Colors.black.withOpacity(0.3)),
                ),
              ),
            ),
            // Overlay content with scale animation
            Positioned(
              right: offset.dx + 20.w,
              top: offset.dy + 145.h,
              child: ScaleTransition(
                scale: _scaleAnimation,
                child: FadeTransition(
                  opacity: _fadeAnimation,
                  child: Material(
                    color: AppColors.scaffoldBackgroundColor,
                    elevation: 5,
                    child: Container(
                      width: 0.5.sw,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ///---------->>> Section : User Name
                          Container(
                            width: 0.5.sw,
                            decoration: BoxDecoration(
                              border: Border(
                                top: BorderSide(color: AppColors.c485b6d),
                                left: BorderSide(color: AppColors.c485b6d),
                                right: BorderSide(color: AppColors.c485b6d),
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.r),
                                topRight: Radius.circular(8.r),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                    'Chowdhury Md. Imtiazul Islam',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextFontStyle
                                        .headline14w600cFDFDFDStyleLora,
                                  ),
                                ),

                                ///---------->>> Section : View Profile
                                InkWell(
                                  onTap: () {
                                    LoggerUtils.debug("View Profile Taped!");
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 10.w),
                                    child: Text(
                                      'View Profile',
                                      style: TextFontStyle
                                          .headline12w400cC4C4C4StyleQuicksand,
                                    ),
                                  ),
                                ),
                                UIHelper.verticalSpace(8.h),

                                ///---------->>> Section : Divider
                                Divider(height: 1.h, color: AppColors.ca3a3a3),
                                UIHelper.verticalSpace(12.h),
                              ],
                            ),
                          ),
                          UIHelper.verticalSpace(8.h),

                          ///------------>>> Section : BookMarks
                          InkWell(
                            onTap: () {
                              LoggerUtils.debug("Bookmarks Taped!");
                            },
                            child: Padding(
                              padding: EdgeInsets.all(10.sp),
                              child: ShowProfileTile(
                                icon: Assets.icons.bookmarksIcon,
                                title: 'Bookmarks',
                              ),
                            ),
                          ),
                          Container(
                            width: 1.sw,
                            height: 8.h,
                            decoration: BoxDecoration(
                              border: Border(
                                left: BorderSide(color: AppColors.c485b6d),
                                right: BorderSide(color: AppColors.c485b6d),
                              ),
                            ),
                          ),

                          ///------------>>> Section : WatchList
                          InkWell(
                            onTap: () {
                              LoggerUtils.debug("Watchlist Taped!");
                            },
                            child: Padding(
                              padding: EdgeInsets.all(10.sp),
                              child: ShowProfileTile(
                                icon: Assets.icons.watchlistIcon,
                                title: 'Watchlist',
                              ),
                            ),
                          ),
                          Container(
                            width: 1.sw,
                            height: 8.h,
                            decoration: BoxDecoration(
                              border: Border(
                                left: BorderSide(color: AppColors.c485b6d),
                                right: BorderSide(color: AppColors.c485b6d),
                              ),
                            ),
                          ),

                          ///------------>>> Section : Ratings
                          InkWell(
                            onTap: () {
                              LoggerUtils.debug("Ratings Taped!");
                            },
                            child: Padding(
                              padding: EdgeInsets.all(10.sp),
                              child: ShowProfileTile(
                                icon: Assets.icons.ratingsIcon,
                                title: 'Ratings',
                              ),
                            ),
                          ),
                          Container(
                            width: 1.sw,
                            height: 8.h,
                            decoration: BoxDecoration(
                              border: Border(
                                left: BorderSide(color: AppColors.c485b6d),
                                right: BorderSide(color: AppColors.c485b6d),
                              ),
                            ),
                          ),

                          ///------------>>> Section : Repost
                          InkWell(
                            onTap: () {
                              LoggerUtils.debug("Repost Taped!");
                            },
                            child: Padding(
                              padding: EdgeInsets.all(10.sp),
                              child: ShowProfileTile(
                                icon: Assets.icons.repostIcon,
                                title: 'Repost',
                              ),
                            ),
                          ),
                          Container(
                            width: 1.sw,
                            height: 8.h,
                            decoration: BoxDecoration(
                              border: Border(
                                left: BorderSide(color: AppColors.c485b6d),
                                right: BorderSide(color: AppColors.c485b6d),
                              ),
                            ),
                          ),

                          ///------------>>> Section : Favorite
                          InkWell(
                            onTap: () {
                              LoggerUtils.debug("Favourite Taped!");
                            },
                            child: Padding(
                              padding: EdgeInsets.all(10.sp),
                              child: ShowProfileTile(
                                icon: Assets.icons.favouriteIcon,
                                title: 'Favorite',
                              ),
                            ),
                          ),
                          UIHelper.verticalSpace(8.h),

                          ///--------->>> Section : Divider
                          Container(
                            height: 16.h,
                            decoration: BoxDecoration(
                              border: Border(
                                left: BorderSide(color: AppColors.c485b6d),
                                right: BorderSide(color: AppColors.c485b6d),
                              ),
                            ),
                            child: Divider(color: AppColors.ca3a3a3),
                          ),
                          UIHelper.verticalSpace(8.h),

                          ///--------->>> Section : Edit Profile
                          InkWell(
                            onTap: () {
                              LoggerUtils.debug("Edit Profile Taped!");
                            },
                            child: SizedBox(
                              width: 1.sw,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 24.w,
                                  right: 10.w,
                                  top: 10.h,
                                  bottom: 10.h,
                                ),
                                child: Text(
                                  'Edit Profile',
                                  style: TextFontStyle
                                      .headline12w400cFDFDFDStyleQuicksand,
                                ),
                              ),
                            ),
                          ),
                          UIHelper.verticalSpace(8.h),

                          ///--------->>> Section : Edit Profile
                          InkWell(
                            onTap: () {
                              LoggerUtils.debug("Settings Taped!");
                            },
                            child: SizedBox(
                              width: 1.sw,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 24.w,
                                  right: 10.w,
                                  top: 10.h,
                                  bottom: 10.h,
                                ),
                                child: Text(
                                  'Settings',
                                  style: TextFontStyle
                                      .headline12w400cFDFDFDStyleQuicksand,
                                ),
                              ),
                            ),
                          ),
                          UIHelper.verticalSpace(8.h),

                          ///--------->>> Section : Divider
                          Container(
                            height: 16.h,
                            decoration: BoxDecoration(
                              border: Border(
                                left: BorderSide(color: AppColors.c485b6d),
                                right: BorderSide(color: AppColors.c485b6d),
                              ),
                            ),
                            child: Divider(color: AppColors.ca3a3a3),
                          ),
                          UIHelper.verticalSpace(8.h),

                          ///--------->>> Section : Edit Profile
                          InkWell(
                            onTap: () {
                              LoggerUtils.debug("Logout Taped!");
                            },
                            child: Padding(
                              padding: EdgeInsets.only(left: 24.w),
                              child: Text(
                                'Logout',
                                style: TextFontStyle
                                    .headline12w400cFDFDFDStyleQuicksand,
                              ),
                            ),
                          ),
                          UIHelper.verticalSpace(8.h),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );

    final overlay = Overlay.of(context);
    overlay.insert(_overlayEntry!);

    // Start animation
    _animationController.forward();
  }

  ///section : Close Profile Overlay
  void hideOverlay() {
    if (_overlayEntry == null) return;

    // Reverse animation first
    _animationController.reverse().then((_) {
      // Remove overlay after animation completes
      _overlayEntry?.remove();
      _overlayEntry = null;
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    _overlayEntry?.remove();
    _overlayEntry = null;
    super.dispose();
  }
}
