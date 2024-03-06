import 'package:allup_user_app/l10n/l10n.dart';
import 'package:allup_user_app/utils/app_assets.dart';
import 'package:allup_user_app/utils/decorations.dart';
import 'package:allup_user_app/utils/helper_functions.dart';
import 'package:allup_user_app/widgets/back_button_widget.dart';
import 'package:allup_user_app/widgets/circle_cache_image_widget.dart';
import 'package:allup_user_app/widgets/image_asset_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GymAccessScreen extends StatelessWidget {
  const GymAccessScreen(
      {required this.qrCode,
      required this.profileImage,
      required this.memberName,
      required this.memberType,
      required this.memberSince,
      required this.memberExpiry,
      required this.memberStatus,
      required this.gymName,
      super.key});
  final String qrCode;
  final String profileImage;
  final String memberName;
  final String memberType;
  final String memberSince;
  final String memberExpiry;
  final String memberStatus;
  final String gymName;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: Container(
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 20.w),
        width: double.infinity,
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
          onPressed: () {
            // context.go('/dashboard');
          },
          backgroundColor: Theme.of(context).colorScheme.scrim,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.check_box_outlined,
                color: Theme.of(context).colorScheme.secondary,
              ),
              Text(
                context.l10n.checkin,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                      fontWeight: FontWeight.w300,
                      fontSize: 18.sp,
                    ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: double.infinity,
            color: Theme.of(context).colorScheme.background,
          ),
          ImageAssetsWidget(
            image: Assets.loginScreenBgPicture,
            height: size.height * 0.4,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: BackButtonWidget(
                  onPressed: () {
                    context.pop();
                  },
                ),
              ),
              SizedBox(
                height: 0.h,
              ),
              Column(
                children: [
                  Text(
                    context.l10n.membershipCard,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  Stack(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.only(
                              top: 60.h,
                            ),
                            margin: EdgeInsets.only(
                              left: 30.w,
                              right: 30.w,
                              top: 70.h,
                              bottom: 10.h,
                            ),
                            decoration: Decorations.boxShadowDecorator(context),
                            child: Column(
                              children: [
                                GymDetailWidget(
                                    gymName: gymName,
                                    memberExpiry: memberExpiry,
                                    memberName: memberName,
                                    memberType: memberType,
                                    memberSince: memberSince),
                              ],
                            ),
                          ),
                          QrImageView(data: qrCode, size: 170.r),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            context.l10n.gymAccessCheckInMessage,
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.7),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 13.sp,
                                ),
                          ),
                        ],
                      ),
                      Positioned(
                          top: 10.r,
                          left: 0,
                          right: 0,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color:
                                      Theme.of(context).colorScheme.background,
                                  width: 3,
                                ),
                              ),
                              child: CircleNetworkImage(
                                  radius: 55.r, imagePath: profileImage),
                            ),
                          ))
                    ],
                  ),
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}

class GymDetailWidget extends StatelessWidget {
  const GymDetailWidget({
    required this.memberName,
    required this.memberType,
    required this.memberSince,
    required this.memberExpiry,
    required this.gymName,
    super.key,
  });

  final String memberName;
  final String memberType;
  final String memberSince;
  final String memberExpiry;
  final String gymName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          context.l10n.membershipName,
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: Theme.of(context).shadowColor.withOpacity(0.5),
              fontWeight: FontWeight.w300,
              fontSize: 13.sp),
        ),
        Text(
          memberName,
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
        ),
        Divider(
          color: Theme.of(context).dividerColor,
          thickness: 1,
        ),
        Text(
          context.l10n.membershipType,
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: Theme.of(context).shadowColor.withOpacity(0.5),
              fontWeight: FontWeight.w300,
              fontSize: 13.sp),
        ),
        Text(
          memberType,
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
        ),
        Divider(
          color: Theme.of(context).dividerColor,
          thickness: 1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  context.l10n.startDate,
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Theme.of(context).shadowColor.withOpacity(0.5),
                      fontWeight: FontWeight.w300,
                      fontSize: 13.sp),
                ),
                Text(
                  HelperFunctions.getDateFromEpochTime(int.parse(memberSince)),
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  context.l10n.expiryDate,
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Theme.of(context).shadowColor.withOpacity(0.5),
                      fontWeight: FontWeight.w300,
                      fontSize: 13.sp),
                ),
                Text(
                  HelperFunctions.getDateFromEpochTime(int.parse(memberExpiry)),
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          height: 50.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.r),
              bottomRight: Radius.circular(20.r),
            ),
            color: Theme.of(context).colorScheme.scrim,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageAssetsWidget(height: 20.h, image: Assets.productLogo),
              SizedBox(
                width: 5.w,
              ),
              Text(
                gymName,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
