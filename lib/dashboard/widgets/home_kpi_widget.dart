import 'package:allup_user_app/dashboard/schemas/gym_membership_info.graphql.dart';
import 'package:allup_user_app/l10n/l10n.dart';
import 'package:allup_user_app/utils/app_assets.dart';
import 'package:allup_user_app/utils/app_text_style.dart';
import 'package:allup_user_app/utils/helper_functions.dart';
import 'package:allup_user_app/widgets/svg_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeKPIWidget extends StatelessWidget {
  const HomeKPIWidget({this.gymMembershipInfo, super.key});
  final Query$GymMembershipInfo? gymMembershipInfo;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    const SvgWidget(path: Assets.checkInIcon),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      (gymMembershipInfo?.gymQrSessionCount?.data?.count ?? 0)
                          .toString(),
                      style: AppTextStyle.bebasNeue(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Text(
                  context.l10n.checkIns,
                  style: AppTextStyle.rubikStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    const SvgWidget(path: Assets.daysToRenewIcon),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      HelperFunctions.getDaysLeft(gymMembershipInfo
                              ?.membership?.data?.membership.endDate)
                          .toString(),
                      style: AppTextStyle.bebasNeue(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Text(
                  context.l10n.daysToExpire,
                  textAlign: TextAlign.center,
                  style: AppTextStyle.rubikStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    const SvgWidget(path: Assets.messagesIcon),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      (gymMembershipInfo?.countUnseenMessages ?? 0).toString(),
                      style: AppTextStyle.bebasNeue(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Text(
                  context.l10n.messages,
                  style: AppTextStyle.rubikStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    const SvgWidget(path: Assets.dueAmountIcon),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Text(
                        (gymMembershipInfo?.membershipDueAmount?.data?.amount ??
                                0)
                            .toString(),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle.bebasNeue(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  context.l10n.dueAmount,
                  style: AppTextStyle.rubikStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
