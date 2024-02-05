import 'package:allup_user_app/theme/app_colors.dart';
import 'package:allup_user_app/theme/custom_theme.dart';
import 'package:flutter/material.dart';

class CTheme extends StatefulWidget {
  const CTheme({required this.child, required this.theme, super.key});
  final Widget child;
  final AppTheme theme;

  static CThemeState of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CustomTheme>()!.data;
  }

  @override
  CThemeState createState() => CThemeState();
}

class CThemeState extends State<CTheme> {
  late AppTheme theme;

  @override
  void initState() {
    super.initState();
    theme = widget.theme;
  }

  void changeTheme(AppTheme newTheme) {
    setState(() {
      theme = newTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomTheme(
      data: this,
      theme: widget.theme,
      child: widget.child,
    );
  }
}
