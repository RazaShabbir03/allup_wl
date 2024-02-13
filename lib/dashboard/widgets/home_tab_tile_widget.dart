import 'package:allup_user_app/utils/app_text_style.dart';
import 'package:allup_user_app/widgets/svg_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTabTileWidget extends StatelessWidget {
  const HomeTabTileWidget(
      {super.key,
      required this.title,
      required this.iconPath,
      required this.onTap});
  final String title;
  final String iconPath;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
        decoration: BoxDecoration(
          color: Theme.of(context)
              .colorScheme
              .secondaryContainer
              .withOpacity(0.07),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            SvgWidget(path: iconPath),
            SizedBox(
              width: 5.w,
            ),
            Text(
              title,
              style: AppTextStyle.rubikStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
