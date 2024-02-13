import 'package:allup_user_app/dashboard/widgets/home_tab_tile_widget.dart';
import 'package:allup_user_app/l10n/l10n.dart';
import 'package:allup_user_app/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTabsHorizontalWidget extends StatelessWidget {
  const HomeTabsHorizontalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final text = context.l10n;
    return SizedBox(
      height: 70.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          const SizedBox(
            width: 10,
          ),
          HomeTabTileWidget(
              title: text.gymAccess,
              iconPath: Assets.gymAccessIcon,
              onTap: () {}),
          HomeTabTileWidget(
            onTap: () {},
            title: text.myBookings,
            iconPath: Assets.myBookingIcon,
          ),
          HomeTabTileWidget(
            onTap: () {},
            title: text.classSchedule,
            iconPath: Assets.classScheduleIcon,
          ),
          HomeTabTileWidget(
            onTap: () {},
            title: text.trainingVideos,
            iconPath: Assets.trainingVideosIcon,
          ),
          HomeTabTileWidget(
            onTap: () {},
            title: text.referAFriend,
            iconPath: Assets.referAFriendIcon,
          ),
          HomeTabTileWidget(
            onTap: () {},
            title: text.offers,
            iconPath: Assets.offersIcon,
          ),
        ],
      ),
    );
  }
}
