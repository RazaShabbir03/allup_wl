import 'package:allup_user_app/theme/app_colors.dart';
import 'package:allup_user_app/theme/c_theme.dart';
import 'package:flutter/material.dart';

class CustomTheme extends InheritedWidget {
  const CustomTheme({
    Key? key,
    required this.child,
    required this.data,
    required this.theme,
  }) : super(key: key, child: child);

  final Widget child;
  final CThemeState data;
  final AppTheme theme;

  @override
  bool updateShouldNotify(CustomTheme oldWidget) => true;
}
