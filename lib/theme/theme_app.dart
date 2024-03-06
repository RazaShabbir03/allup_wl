//light theme for app
import 'package:allup_user_app/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemeModeLight {
  ThemeModeLight._internal();
  static ThemeData themeData(BuildContext context) {
    return ThemeData(
      //text style for app
      textTheme: TextTheme(
        displayLarge: AppTextStyle.bebasNeue(
          color: Colors.white,
          fontSize: 41.sp,
        ),
        displayMedium: AppTextStyle.bebasNeue(
          color: Colors.white,
          fontSize: 31.sp,
        ),
        displaySmall: AppTextStyle.bebasNeue(
          color: Colors.white,
          fontSize: 21.sp,
        ),
        titleLarge: AppTextStyle.rubikStyle(
          color: Colors.white,
          fontSize: 25.sp,
        ),
        titleMedium: AppTextStyle.rubikStyle(
          color: Colors.white,
          fontSize: 19.sp,
        ),
        titleSmall: AppTextStyle.rubikStyle(
          color: Colors.black,
          fontSize: 15.sp,
        ),
        labelLarge: AppTextStyle.rubikStyle(
          color: Colors.white,
          fontSize: 19.sp,
        ),
        labelMedium: AppTextStyle.rubikStyle(
          color: Colors.white,
          fontSize: 15.sp,
        ),
        labelSmall: AppTextStyle.rubikStyle(
          color: Colors.white,
          fontSize: 11.sp,
        ),
      ),
      focusColor: const Color(0xFFCC3C86),
      dividerColor: const Color(0xFFD8E0E4),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.black,
        titleTextStyle: AppTextStyle.bebasNeue(
          color: Colors.white,
          fontSize: 41.sp,
        ),
      ),
      shadowColor: const Color(0xFF494961),
      colorScheme: const ColorScheme.light(
        scrim: Color(0xFF1F2432),
        primary: Colors.black,
        secondary: Color(0xFFD8E0E4),
        secondaryContainer: Color(0xFF465E8D),
        background: Color(0xFFFFFFFF),
        surface: Color(0xFFFFFFFF),
        onBackground: Color(0xFF000000),
        error: Color(0xFFB00020),
        onError: Color(0xFFF95365),
        onPrimary: Colors.white,
        onSecondary: Color(0xFFCB2A4B),
        onSurface: Color(0xFF000000),
      ),
      useMaterial3: true,
    );
  }
}

//dark theme for app
class ThemeModeDark {
  static ThemeData themeData(BuildContext context) {
    return ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      useMaterial3: true,
    );
  }
}
