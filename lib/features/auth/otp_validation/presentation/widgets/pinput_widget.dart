import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_rating_application/constants/text_font_style.dart';
import 'package:movie_rating_application/gen/colors.gen.dart';
import 'package:pinput/pinput.dart';

class PinputWidget extends StatelessWidget {
  const PinputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 47.w,
      height: 62.h,
      textStyle: TextFontStyle.headline24w500cC4C4C4StyleQuicksand,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.cFFFFFF),
        borderRadius: BorderRadius.circular(10),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Colors.blue),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color: AppColors.c1a3248,
      ),
    );

    return Pinput(
      defaultPinTheme: defaultPinTheme,
      length: 6,
      focusedPinTheme: focusedPinTheme,
      submittedPinTheme: submittedPinTheme,
      validator: (s) {
        return s == '222222' ? null : 'Pin is incorrect';
      },
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      showCursor: true,
      onCompleted: (pin) => print(pin),
    );
  }
}
