import 'package:flutter/widgets.dart';

class AppTheme {
  static const Color brandBottomSheetTitleColor = Color(0xFF212121);
  static const Color backBottomBgColor = Color(0xFFDFE5EA);
  static const Color expiredIcon = Color(0xFFEFF3F6);
  static const Color expiredTextColor = Color(0xFF253E43);
  static const Gradient gradient = LinearGradient(
    colors: [
      Color(0xFFE3785B),
      Color(0xFFD34691),
    ],
  );
}

class AppThemeLight extends AppTheme {
  static const Color brandBottomSheetTitleColor = Color(0xFF212121);
  static const Color backBottomBgColor = Color(0xFFDFE5EA);
}

class AppThemeDark extends AppTheme {
  static const Color brandBottomSheetTitleColor = Color(0xFFE0E0E0);
  static const Color backBottomBgColor = Color(0xFFDFE5EA);
}
