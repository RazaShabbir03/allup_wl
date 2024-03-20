import 'package:allup_user_app/l10n/cubit/locale_cubit.dart';
import 'package:allup_user_app/l10n/l10n.dart';
import 'package:allup_user_app/services/navigation_service.dart';
import 'package:allup_user_app/utils/app_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

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
      final now = DateTime.now();
      //check if datetime now is greater than end date
      if (now.isAfter(DateTime.fromMillisecondsSinceEpoch(intEndDate))) {
        return 0;
      }
      final endDateTime = DateTime.fromMillisecondsSinceEpoch(intEndDate);
      final difference = endDateTime.difference(now);
      return difference.inDays;
    } catch (e) {
      return 0;
    }
  }

  //check if same day
  static bool isSameDay(DateTime? a, DateTime? b) {
    if (a == null || b == null) {
      return false;
    }

    return a.year == b.year && a.month == b.month && a.day == b.day;
  }

  //get week day from integers looking at locale
  static String getWeekDay(int day, String locale) {
    switch (day) {
      case 1:
        return locale == 'en' ? 'MON' : 'الاثنين';
      case 2:
        return locale == 'en' ? 'TUE' : 'يوم الثلاثاء';
      case 3:
        return locale == 'en' ? 'WED' : 'Mercredi';
      case 4:
        return locale == 'en' ? 'THU' : 'Jeudi';
      case 5:
        return locale == 'en' ? 'FRI' : 'Vendredi';
      case 6:
        return locale == 'en' ? 'SAT' : 'Samedi';
      case 7:
        return locale == 'en' ? 'SUN' : 'Dimanche';
      default:
        return '';
    }
  }

  ///For year-month-day format from date if null return empty string else return formatted date to local
  static String getFormattedDate(DateTime? date) {
    if (date == null) {
      return '';
    }
    return DateFormat('yyyy-MM-dd').format(date.toLocal());
  }

  static String getHumanReadableDate(DateTime? date) {
    if (date == null) {
      return '';
    }
    return DateFormat('dd MMM yy').format(date.toLocal());
  }

  static String getFormattedTime(String? input) {
    if (input == null) {
      return '';
    }
    // Parse the input time string
    var parsedTime = DateFormat(
      'HH:mm:ss',
    ).parse(input);

    // Format the parsed time into "hh:mm a" format
    var formattedTime = DateFormat('hh:mm a').format(parsedTime);

    return formattedTime;
  }

  //date from epoch time
  static String getDateFromEpochTime(int? epochTime) {
    if (epochTime == null) {
      return '';
    }
    return DateFormat(
            'yyyy-MM-dd',
            BlocProvider.of<LocaleCubit>(
                    NavigationService.navigatorKey.currentContext!)
                .currentLanguageCode)
        .format(DateTime.fromMillisecondsSinceEpoch(epochTime).toLocal());
  }
}
