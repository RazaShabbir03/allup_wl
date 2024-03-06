import 'package:allup_user_app/utils/app_assets.dart';
import 'package:allup_user_app/widgets/svg_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmptyClassesWidget extends StatelessWidget {
  const EmptyClassesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgWidget(
          path: Assets.emptyScreen,
          height: 128.r,
        ),
        SizedBox(height: 20.h),
        Text(
          'No Classes Found',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).primaryColor,
              fontSize: 21.sp,
              fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 20.h),
        Text(
            'This will be the place where you can find a list of all your classes.',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Theme.of(context).shadowColor.withOpacity(0.65),
                fontSize: 15.sp,
                fontWeight: FontWeight.w200)),
      ],
    );
  }
}
