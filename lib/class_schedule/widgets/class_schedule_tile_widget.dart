import 'package:allup_user_app/class_schedule/schemas/scheduled_gym_classes.graphql.dart';
import 'package:allup_user_app/class_schedule/widgets/attend_button_widget.dart';
import 'package:allup_user_app/class_schedule/widgets/cancel_button_widget.dart';
import 'package:allup_user_app/class_schedule/widgets/subscribe_button_widget.dart';
import 'package:allup_user_app/l10n/l10n.dart';
import 'package:allup_user_app/utils/app_assets.dart';
import 'package:allup_user_app/utils/dialogs.dart';
import 'package:allup_user_app/utils/helper_functions.dart';
import 'package:allup_user_app/widgets/price_tag_painter.dart';
import 'package:allup_user_app/widgets/svg_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClassScheduleTileWidget extends StatelessWidget {
  const ClassScheduleTileWidget({required this.gymClass, super.key});
  final Query$ScheduledGymClasses$gymClassesScheduledV2$list gymClass;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            gymClass.name,
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
                      '${gymClass.instructorFirstName} ${gymClass.instructorLastName}',
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
                      context.l10n.duration,
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w300),
                    ),
                    Text(
                      '${gymClass.duration}min',
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
                      HelperFunctions.getFormattedTime(gymClass.openTime),
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
                  if (!(gymClass.isPurchased ?? false))
                    Container(
                        height: 28,
                        margin: EdgeInsets.only(right: 5.w),
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 5.h),
                        decoration: BoxDecoration(
                          color: Theme.of(context)
                              .colorScheme
                              .onError
                              .withOpacity(0.1),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgWidget(
                              path: Assets.spotsIcon,
                              height: 15.r,
                              width: 15.r,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              '${(gymClass.spotsCapacity ?? 0) - (gymClass.spotsAllotted ?? 0)} ${context.l10n.spots}',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onError,
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w600),
                            ),
                          ],
                        ))
                  else
                    Container(),
                  SubscribeButtonWidget(
                    isSubscribed: gymClass.isPurchased ?? false,
                    onPressed: () {
                      DialogBoxes.showLoadingDialog(context,
                          barrierDismissible: true,
                          title: 'Are you sure?',
                          description:
                              'Your age and/or gender details are missing. Classes may have age and gender restrictions. Are you sure you want subscribe to ${gymClass.name}?',
                          confirmText: 'Yes',
                          dismissText: 'Dismiss', onConfirm: () {
                        Navigator.pop(context);
                      }, onDismiss: () {});
                    },
                  ),
                  if (gymClass.isPurchased ?? false)
                    Container(
                      margin: EdgeInsets.only(left: 5.w),
                      child: Row(
                        children: [
                          AttendButton(
                            isEnabled: gymClass.isAttendable ?? false,
                            onPressed: () {},
                          ),
                          if (gymClass.isAttended ?? false)
                            SizedBox()
                          else
                            Padding(
                              padding: EdgeInsets.only(left: 5.w),
                              child: CancelButton(
                                onPressed: () {},
                              ),
                            ),
                        ],
                      ),
                    )
                ],
              ),
              if (gymClass.dropInClientPrice?.value != 0.0 &&
                  gymClass.isPurchased == false)
                PriceTag(
                    color: Theme.of(context).colorScheme.onSecondary,
                    price:
                        '${gymClass.currencyCode ?? 'AED'} ${gymClass.dropInClientPrice!.value}')
              else if (gymClass.dropInClientPrice?.value == 0.0 &&
                  gymClass.isPurchased == false)
                PriceTag(
                    color: Theme.of(context).colorScheme.secondary,
                    price: context.l10n.free)
              else if (gymClass.isAttendable == false)
                Container()
              else
                Container(),
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
