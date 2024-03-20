import 'package:allup_user_app/dashboard/blocs/bloc/dashboard_bloc.dart';
import 'package:allup_user_app/l10n/l10n.dart';
import 'package:allup_user_app/routes/route_names.dart';
import 'package:allup_user_app/theme/app_colors.dart';
import 'package:allup_user_app/utils/app_assets.dart';
import 'package:allup_user_app/widgets/dp_placeholder_widget.dart';
import 'package:allup_user_app/widgets/svg_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProfileCardWidget extends StatelessWidget {
  const ProfileCardWidget({
    required this.dashboardState,
    super.key,
  });
  final DashboardState dashboardState;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              padding: EdgeInsets.only(
                top: 40.r,
              ),
              child: Column(
                children: [
                  Container(
                    height: 0.007.sh,
                    width: 0.9.sw,
                    decoration:
                        const BoxDecoration(gradient: AppTheme.gradient),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.background,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.r),
                        bottomRight: Radius.circular(20.r),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Theme.of(context).shadowColor.withOpacity(0.4),
                          blurRadius: 20,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    width: 0.9.sw,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 0.06.sh,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(
                            horizontal: 0.05.sw,
                          ),
                          child: Text(
                            '${dashboardState.user?.firstName ?? ''} ${dashboardState.user?.lastName ?? ''}',
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                  fontSize: 35.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                          ),
                        ),
                        SizedBox(
                          height: 0.02.sh,
                        ),
                        SizedBox(
                          height: 45,
                          width: 0.8.sw,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shadowColor: Theme.of(context).splashColor,
                              elevation: 0,
                              surfaceTintColor: Theme.of(context)
                                  .colorScheme
                                  .onSecondary
                                  .withOpacity(0.1),
                              backgroundColor: Theme.of(context)
                                  .colorScheme
                                  .onError
                                  .withOpacity(0.1),
                              side: BorderSide(
                                color:
                                    Theme.of(context).colorScheme.onSecondary,
                                width: 1,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100.r),
                              ),
                            ),
                            onPressed: () {
                              context.push(Routes.switchAccount);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgWidget(
                                    path: Assets.switchAccountIcon,
                                    height: 20.r),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  context.l10n.switchAccount,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                    fontVariations: const [
                                      FontVariation('wght', 500)
                                    ],
                                    fontSize: 16.sp,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 0.02.sh,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              child: Align(
                alignment: Alignment.topCenter,
                child: DpPlaceHolderWidget(
                  imagePath: dashboardState.user?.photo,
                  radius: 40.r,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
