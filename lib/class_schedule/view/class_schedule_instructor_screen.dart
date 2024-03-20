import 'package:allup_user_app/auth/blocs/bloc/auth_bloc.dart';
import 'package:allup_user_app/class_schedule/blocs/class_schedule_instructor_bloc/class_schedule_instructor_bloc.dart';
import 'package:allup_user_app/class_schedule/widgets/calendar_widget.dart';
import 'package:allup_user_app/class_schedule/widgets/class_schedule_tile_widget.dart';
import 'package:allup_user_app/class_schedule/widgets/instructor_profile_banner_widget.dart';
import 'package:allup_user_app/class_schedule/widgets/no_classes_widget.dart';
import 'package:allup_user_app/routes/route_names.dart';
import 'package:allup_user_app/utils/app_assets.dart';
import 'package:allup_user_app/utils/helper_functions.dart';
import 'package:allup_user_app/utils/loading_dialog_full_screen.dart';
import 'package:allup_user_app/widgets/back_button_widget.dart';
import 'package:allup_user_app/widgets/image_asset_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ClassScheduleInstructorScreen extends StatelessWidget {
  const ClassScheduleInstructorScreen(
      {required this.instructorId,
      super.key,
      this.profilePic,
      this.instructorName});
  final String? profilePic;
  final String? instructorName;
  final String instructorId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const ImageAssetsWidget(image: Assets.bg2, width: double.infinity),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: BackButtonWidget(
                  onPressed: () {
                    context.pop();
                  },
                ),
              ),
              ProfileBannerWidget(profilePic: profilePic),
              Expanded(
                child: ColoredBox(
                  color: Theme.of(context).colorScheme.background,
                  child: Column(
                    children: [
                      SizedBox(height: 20.h),
                      Center(
                        child: Text(
                          instructorName ?? '',
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                            fontSize: 18.sp,
                            color: Theme.of(context).colorScheme.primary,
                            fontVariations: const [FontVariation('wght', 600)],
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      BlocBuilder<ClassScheduleInstructorBloc,
                          ClassScheduleInstructorState>(
                        builder: (context, state) {
                          return SizedBox(
                            height: 170.h,
                            child: CalendarWidget(
                              selectedDate: state.selectedDate,
                              onDateSelected: (date) {
                                BlocProvider.of<ClassScheduleInstructorBloc>(
                                        context)
                                    .add(ChangeSelectedDate(
                                  selectedDate: date,
                                ));
                              },
                            ),
                          );
                        },
                      ),
                      Expanded(
                        child: BlocBuilder<ClassScheduleInstructorBloc,
                            ClassScheduleInstructorState>(
                          builder: (context, state) {
                            if (state is ClassScheduleInstructorInitial) {
                              BlocProvider.of<ClassScheduleInstructorBloc>(
                                      context)
                                  .add(FetchClassScheduleInstructorEvent(
                                instructorId: instructorId,
                                forDate: DateTime.now(),
                                gymId: BlocProvider.of<AuthBloc>(context)
                                    .state
                                    .selectedGymId!,
                              ));
                            }
                            if (state.fetchStatus ==
                                ClassScheduleInstructorStatus.loading) {
                              return const Center(
                                  child: LoadingDialogFullScreen());
                            }
                            if (state.fetchStatus ==
                                ClassScheduleInstructorStatus.empty) {
                              return const NoClassesWidget();
                            } else {
                              return ListView.builder(
                                  shrinkWrap: true,
                                  padding: EdgeInsets.only(top: 20.h),
                                  itemCount: state.gymClasses.length,
                                  itemBuilder: (context, index) {
                                    return InkWell(
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
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
