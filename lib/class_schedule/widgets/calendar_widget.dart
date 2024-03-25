import 'package:allup_user_app/class_schedule/blocs/tab_gym_classes_bloc/tab_gym_classes_bloc.dart';
import 'package:allup_user_app/l10n/cubit/locale_cubit.dart';
import 'package:allup_user_app/utils/app_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatelessWidget {
  final DateTime? selectedDate;
  final void Function(DateTime)? onDateSelected;
  const CalendarWidget({super.key, this.selectedDate, this.onDateSelected});

  @override
  Widget build(BuildContext context) {
    final DateTime _focusedDay = DateTime.now();
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor.withOpacity(0.3),
            blurRadius: 20,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: TableCalendar<void>(
        focusedDay: selectedDate ?? _focusedDay,
        firstDay: _focusedDay,
        lastDay: DateTime.utc(2030, 3, 14),
        rangeSelectionMode: RangeSelectionMode.disabled,
        calendarFormat: CalendarFormat.week,
        availableCalendarFormats: const {
          CalendarFormat.week: 'Week',
        },
        onPageChanged: (focusedDay) {
          onDateSelected?.call(focusedDay);
        },
        sixWeekMonthsEnforced: true,
        calendarStyle: CalendarStyle(
          isTodayHighlighted: false,
          defaultTextStyle: AppTextStyle.bebasNeue(
            color: Theme.of(context).primaryColor,
            fontSize: 22.sp,
          ),
          outsideTextStyle: AppTextStyle.bebasNeue(
            color: Theme.of(context).colorScheme.primary,
            fontSize: 22.sp,
          ),
          outsideDecoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            shape: BoxShape.circle,
          ),
          todayTextStyle: AppTextStyle.bebasNeue(fontSize: 22.sp),
          selectedTextStyle: AppTextStyle.bebasNeue(
            color: Theme.of(context).colorScheme.background,
            fontSize: 22.sp,
          ),
          holidayTextStyle: AppTextStyle.bebasNeue(
            color: Theme.of(context).primaryColor,
            fontSize: 22.sp,
          ),
          holidayDecoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            shape: BoxShape.circle,
          ),
          disabledDecoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            shape: BoxShape.circle,
          ),
          selectedDecoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onSecondary,
            shape: BoxShape.circle,
          ),
          weekendTextStyle: AppTextStyle.bebasNeue(
            color: Theme.of(context).primaryColor,
            fontSize: 22.sp,
          ),
          weekendDecoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            shape: BoxShape.circle,
          ),
        ),
        locale: BlocProvider.of<LocaleCubit>(context).currentLanguageCode,
        headerStyle: HeaderStyle(
            titleCentered: true,
            titleTextStyle: AppTextStyle.rubikStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
            ),
            formatButtonDecoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onError,
              borderRadius: BorderRadius.circular(20),
            ),
            formatButtonShowsNext: false),
        shouldFillViewport: true,
        daysOfWeekHeight: 40,
        selectedDayPredicate: (day) {
          return isSameDay(
            selectedDate,
            day,
          ); // Use the isSameDay function
        },
        startingDayOfWeek: StartingDayOfWeek.monday,
        daysOfWeekStyle: DaysOfWeekStyle(
          weekdayStyle: AppTextStyle.rubikStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 18.sp,
          ),
          weekendStyle: AppTextStyle.rubikStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 18.sp,
          ),
        ),
        onDaySelected: (day, events) {
          if (day != selectedDate) {
            onDateSelected?.call(day);
          }
        },
      ),
    );
  }
}
