import 'package:allup_user_app/class_schedule/widgets/attend_button_widget.dart';
import 'package:allup_user_app/class_schedule/widgets/cancel_button_widget.dart';
import 'package:allup_user_app/class_schedule/widgets/subscribe_button_widget.dart';
import 'package:allup_user_app/l10n/l10n.dart';
import 'package:allup_user_app/my_bookings/blocs/session_contracts/session_contracts_bloc.dart';
import 'package:allup_user_app/my_bookings/schemas/booked_gym_classes.graphql.dart';
import 'package:allup_user_app/utils/dialogs.dart';
import 'package:allup_user_app/utils/helper_functions.dart';
import 'package:allup_user_app/widgets/missed_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyClassTileWidget extends StatelessWidget {
  const MyClassTileWidget({required this.myClass, super.key});
  final Query$BookedGymClasses$membershipGymClassesV2$list myClass;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            myClass.name,
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
                      '${myClass.instructorFirstName} ${myClass.instructorLastName}',
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
                      myClass.date,
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
                      HelperFunctions.getFormattedTime(myClass.openTime),
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
              if (!(myClass.isExpired ?? false))
                Row(
                  children: [
                    SubscribeButtonWidget(
                      isSubscribed: myClass.isPurchased ?? false,
                      onPressed: () {
                        DialogBoxes.showTwoButtonAlertDialog(context,
                            barrierDismissible: true,
                            title: 'Are you sure?',
                            description:
                                'Your age and/or gender details are missing. Classes may have age and gender restrictions. Are you sure you want subscribe to ${myClass.name}?',
                            confirmText: 'Yes',
                            dismissText: 'Dismiss', onConfirm: () {
                          Navigator.pop(context);
                        }, onDismiss: () {
                          Navigator.pop(context);
                        });
                      },
                    ),
                    if (myClass.isPurchased ?? false)
                      Container(
                        margin: EdgeInsets.only(left: 5.w),
                        child: Row(
                          children: [
                            AttendButton(
                              isEnabled: myClass.isAttendable ?? false,
                              onPressed: () {},
                            ),
                            if (myClass.isAttended ?? false)
                              SizedBox()
                            else
                              Padding(
                                padding: EdgeInsets.only(left: 5.w),
                                child: CancelButton(
                                  onPressed: () {
                                    DialogBoxes.showTwoButtonAlertDialog(
                                        context,
                                        barrierDismissible: true,
                                        title: 'Are you sure?',
                                        description:
                                            'Are you sure you want to cancel ${myClass.name}?',
                                        confirmText: 'Yes',
                                        dismissText: 'Dismiss', onConfirm: () {
                                      Navigator.pop(context);
                                    }, onDismiss: () {
                                      Navigator.pop(context);
                                    });
                                  },
                                ),
                              ),
                          ],
                        ),
                      )
                  ],
                )
              else
                MissedButton(),
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
