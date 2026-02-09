import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../gen/assets.gen.dart';
import '../gen/colors.gen.dart';



class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1.sp),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.cFFFFFF),
      ),
      child: CircleAvatar(
        radius: 30.r,
        backgroundColor: AppColors.scaffoldBackgroundColor,
        backgroundImage: AssetImage(
          Assets.images.onboardingBodyImageOne.path,
        ),
      ),
    );
  }
}