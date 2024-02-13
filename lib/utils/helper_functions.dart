import 'package:allup_user_app/l10n/l10n.dart';
import 'package:allup_user_app/utils/app_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class HelperFunctions {
  ///clear stack and navigate to a new route
  static void clearStackAndNavigate(BuildContext context, String path) {
    while (GoRouter.of(context).canPop()) {
      GoRouter.of(context).pop();
    }
    GoRouter.of(context).pushReplacement(path);
  }

  ///For cupertino refresh indicator
  static Widget buildIndicatorForRefreshState(RefreshIndicatorMode refreshState,
      double radius, double percentageComplete, BuildContext context) {
    switch (refreshState) {
      case RefreshIndicatorMode.drag:
        // While we're dragging, we draw individual ticks of the spinner while simultaneously
        // easing the opacity in. The opacity curve values here were derived using
        // Xcode through inspecting a native app running on iOS 13.5.
        const Curve opacityCurve = Interval(0.0, 0.35, curve: Curves.easeInOut);
        return Opacity(
          opacity: opacityCurve.transform(percentageComplete),
          child: Column(children: [
            CupertinoActivityIndicator.partiallyRevealed(
                color: Theme.of(context).colorScheme.background,
                radius: radius,
                progress: percentageComplete),
            SizedBox(
              height: 5.h,
            ),
            Text(
              context.l10n.pull2Refresh,
              style: AppTextStyle.rubikStyle(
                fontSize: 15.sp * percentageComplete,
                color: Theme.of(context)
                    .colorScheme
                    .background
                    .withOpacity(percentageComplete),
              ),
            ),
          ]),
        );
      case RefreshIndicatorMode.armed:
      case RefreshIndicatorMode.refresh:
        // Once we're armed or performing the refresh, we just show the normal spinner.
        return Column(
          children: [
            CupertinoActivityIndicator(
              radius: radius,
              color: Theme.of(context).colorScheme.background,
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              context.l10n.pull2Refresh,
              style: AppTextStyle.rubikStyle(
                color: Theme.of(context).colorScheme.background,
              ),
            ),
          ],
        );
      case RefreshIndicatorMode.done:
        // When the user lets go, the standard transition is to shrink the spinner.
        return Column(
          children: [
            CupertinoActivityIndicator(
              radius: radius * percentageComplete,
              color: Theme.of(context).colorScheme.background,
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              context.l10n.pull2Refresh,
              style: AppTextStyle.rubikStyle(
                fontSize: 15.sp * percentageComplete,
                color: Theme.of(context)
                    .colorScheme
                    .background
                    .withOpacity(percentageComplete),
              ),
            ),
          ],
        );
      case RefreshIndicatorMode.inactive:
        // Anything else doesn't show anything.
        return const SizedBox.shrink();
    }
  }

  //Function for converting epoch time to date and substracting end date from current date and get days left
  static int getDaysLeft(String? endDate) {
    try {
      if (endDate == null) {
        return 0;
      }
      final intEndDate = int.tryParse(endDate);
      if (intEndDate == null) {
        return 0;
      }
      final DateTime now = DateTime.now();
      //check if datetime now is greater than end date
      if (now.isAfter(DateTime.fromMillisecondsSinceEpoch(intEndDate))) {
        return 0;
      }
      final DateTime endDateTime =
          DateTime.fromMillisecondsSinceEpoch(intEndDate);
      final Duration difference = endDateTime.difference(now);
      return difference.inDays;
    } catch (e) {
      return 0;
    }
  }
}
