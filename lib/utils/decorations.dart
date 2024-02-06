import 'package:allup_user_app/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class Decorations {
  static BoxDecoration boxShadowDecorator(BuildContext context) {
    return BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
          blurRadius: 20.r,
          spreadRadius: 10.r,
        ),
      ],
      color: Theme.of(context).colorScheme.background,
      borderRadius: BorderRadius.circular(20.r),
    );
  }

  static PinTheme pinTheme(BuildContext context) {
    return PinTheme(
      width: 50,
      height: 48,
      textStyle: AppTextStyle.rubikStyle(
          fontSize: 20.sp,
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: Theme.of(context).dividerColor,
          width: 2,
        ),
      ),
    );
  }

  static PinTheme focusedPinTheme(BuildContext context) {
    return PinTheme(
      width: 50,
      height: 48,
      textStyle: AppTextStyle.rubikStyle(
          fontSize: 20.sp,
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: Theme.of(context).focusColor),
      ),
    );
  }
}
