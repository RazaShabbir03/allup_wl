import 'package:allup_user_app/class_schedule/blocs/tab_gym_classes_bloc/tab_gym_classes_bloc.dart';
import 'package:allup_user_app/class_schedule/widgets/calendar_widget.dart';
import 'package:allup_user_app/class_schedule/widgets/class_schedule_tile_widget.dart';
import 'package:allup_user_app/class_schedule/widgets/no_classes_widget.dart';
import 'package:allup_user_app/routes/route_names.dart';
import 'package:allup_user_app/utils/helper_functions.dart';
import 'package:allup_user_app/utils/loading_dialog_full_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class MultiGymClassesByDateWidget extends StatelessWidget {
  const MultiGymClassesByDateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          BlocBuilder<TabGymClassesBloc, TabGymClassesState>(
            builder: (context, state) {
              return SizedBox(
                height: 170.h,
                child: CalendarWidget(
                    selectedDate: state.selectedDate,
                    onDateSelected: (date) {
                      BlocProvider.of<TabGymClassesBloc>(context).add(
                        ChangeSelectedDate(
                          selectedDate: date,
                        ),
                      );
                    }),
              );
            },
          ),
          Expanded(
            child: BlocBuilder<TabGymClassesBloc, TabGymClassesState>(
              builder: (context, state) {
                if (state.fetchStatus == TabGymClassesStatus.loading) {
                  return const Center(child: LoadingDialogFullScreen());
                }
                if (state.fetchStatus == TabGymClassesStatus.empty) {
                  return const NoClassesWidget();
                } else {
                  return ListView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.only(top: 20.h),
                      itemCount: state.gymClasses.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            context.push(
                                '${Routes.classScheduleDetail}?scheduleId=${state.gymClasses[index].scheduleId}&bookedFor=${HelperFunctions.getFormattedDate(state.selectedDate)}&bookedTime=${state.gymClasses[index].openTime}',
                                extra: context);
                          },
                          child: ClassScheduleTileWidget(
                              gymClass: state.gymClasses[index]),
                        );
                      });
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
