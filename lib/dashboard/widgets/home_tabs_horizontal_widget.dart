import 'package:allup_user_app/dashboard/blocs/bloc/dashboard_bloc.dart';
import 'package:allup_user_app/dashboard/widgets/home_tab_tile_widget.dart';
import 'package:allup_user_app/l10n/l10n.dart';
import 'package:allup_user_app/routes/route_names.dart';
import 'package:allup_user_app/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class HomeTabsHorizontalWidget extends StatelessWidget {
  const HomeTabsHorizontalWidget(
      {required this.dashboardState, required this.gymName, super.key});
  final DashboardState dashboardState;
  final String gymName;

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
          if (dashboardState.purchasedMembershipResponse?.singleMemberships !=
                  null &&
              (dashboardState.purchasedMembershipResponse?.singleMemberships
                      ?.isNotEmpty ??
                  false))
            HomeTabTileWidget(
                title: text.gymAccess,
                iconPath: Assets.gymAccessIcon,
                onTap: () {
                  context.push(
                      '${Routes.gymAccess}?qrCode=${dashboardState.purchasedMembershipResponse?.singleMemberships?.first?.qrCode ?? ''}&memberName=${dashboardState.user?.firstName ?? ''} ${dashboardState.user?.lastName ?? ''}&memberType=${dashboardState.purchasedMembershipResponse?.singleMemberships?.first?.name ?? ''}&memberSince=${dashboardState.purchasedMembershipResponse?.singleMemberships?.first?.startDate ?? ''}&memberExpiry=${dashboardState.purchasedMembershipResponse?.singleMemberships?.first?.endDate ?? ''}&memberStatus=${dashboardState.purchasedMembershipResponse?.singleMemberships?.first?.status ?? ''}&profileImage=${dashboardState.user?.photo ?? ''}&gymName=${gymName}');
                })
          else
            const SizedBox(),
          HomeTabTileWidget(
            onTap: () {
              context.push(Routes.myBookings);
            },
            title: text.myBookings,
            iconPath: Assets.myBookingIcon,
          ),
          HomeTabTileWidget(
            onTap: () {
              context.push(Routes.multiClassSchedule);
            },
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
            onTap: () {
              context.push(Routes.myOffers);
            },
            title: text.offers,
            iconPath: Assets.offersIcon,
          ),
        ],
      ),
    );
  }
}
