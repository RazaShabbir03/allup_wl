import 'package:allup_user_app/class_schedule/widgets/calendar_widget.dart';
import 'package:allup_user_app/theme/app_colors.dart';
import 'package:allup_user_app/widgets/dp_placeholder_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileBannerWidget extends StatelessWidget {
  const ProfileBannerWidget({
    this.profilePic,
    super.key,
  });

  final String? profilePic;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              margin: EdgeInsets.only(
                top: 40.h,
              ),
              color: Theme.of(context).colorScheme.background,
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 15.h),
              height: 0.007.sh,
              width: double.infinity,
              decoration: const BoxDecoration(gradient: AppTheme.gradient),
            ),
          ),
          Center(
            child: DpPlaceHolderWidget(
              imagePath: profilePic,
              radius: 30.r,
            ),
          ),
        ],
      ),
    );
  }
}
