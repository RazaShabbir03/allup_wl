import 'package:allup_user_app/class_schedule/widgets/subscribe_button_widget.dart';
import 'package:allup_user_app/l10n/l10n.dart';
import 'package:allup_user_app/my_bookings/schemas/booked_pt_sessions.graphql.dart';
import 'package:allup_user_app/utils/dialogs.dart';
import 'package:allup_user_app/utils/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SessionContractPreviousTileWidget extends StatelessWidget {
  const SessionContractPreviousTileWidget(
      {required this.sessionContract, super.key});
  final Query$BookedPTSessions$sessionContractBookings$list sessionContract;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            sessionContract.serviceName ?? '',
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Theme.of(context).colorScheme.onSecondary,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              Expanded(
                flex: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.l10n.instructor,
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w300),
                    ),
                    Text(
                      '${sessionContract.instructorName}',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    Text(
                      'Date',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w300),
                    ),
                    Text(
                      HelperFunctions.getHumanReadableDate(
                          sessionContract.sessionDate!.date),
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    Text(
                      context.l10n.time,
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w300),
                    ),
                    Text(
                      HelperFunctions.getFormattedTime(
                          sessionContract.openTime),
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SubscribeButtonWidget(
                    isSubscribed: sessionContract.isPurchased ?? false,
                    onPressed: () {
                      DialogBoxes.showTwoButtonAlertDialog(context,
                          barrierDismissible: true,
                          title: 'Are you sure?',
                          description:
                              'Your age and/or gender details are missing. Classes may have age and gender restrictions. Are you sure you want subscribe to ${sessionContract.serviceName}?',
                          confirmText: 'Yes',
                          dismissText: 'Dismiss', onConfirm: () {
                        Navigator.pop(context);
                      }, onDismiss: () {
                        Navigator.pop(context);
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Divider(
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
            thickness: 1,
          )
        ],
      ),
    );
  }
}
