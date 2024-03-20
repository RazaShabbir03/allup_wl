import 'package:allup_user_app/class_schedule/blocs/tab_gym_classes_bloc/tab_gym_classes_bloc.dart';
import 'package:allup_user_app/routes/route_names.dart';
import 'package:allup_user_app/utils/loading_dialog_full_screen.dart';
import 'package:allup_user_app/widgets/cache_image_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class MultiGymClassesByInstructorWidget extends StatelessWidget {
  const MultiGymClassesByInstructorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Theme.of(context).colorScheme.secondary,
      child: BlocBuilder<TabGymClassesBloc, TabGymClassesState>(
        builder: (context, state) {
          if (state.fetchStatus == TabGymClassesStatus.loading) {
            return const LoadingDialogFullScreen();
          }
          return GridView.builder(
              padding: const EdgeInsets.all(10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.r,
                mainAxisSpacing: 10.r,
              ),
              itemCount: state.gymClassesByInstructor.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    context.push(
                        '${Routes.classScheduleInstructorRoute}?profilePic=${state.gymClassesByInstructor[index].photo}&instructorName=${state.gymClassesByInstructor[index].firstName + ' ' + (state.gymClassesByInstructor[index].lastName ?? '')}&instructorId=${state.gymClassesByInstructor[index].id}');
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surface,
                      borderRadius: BorderRadius.circular(10.r),
                      boxShadow: [
                        BoxShadow(
                          color: Theme.of(context).shadowColor.withOpacity(0.4),
                          blurRadius: 20,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        CacheNetworkImage(
                            radius: 10.r,
                            height: 150.h,
                            width: double.infinity,
                            fit: BoxFit.contain,
                            imagePath:
                                state.gymClassesByInstructor[index].photo),
                        Expanded(
                          child: Center(
                            child: Text(
                              '${state.gymClassesByInstructor[index].firstName} ${state.gymClassesByInstructor[index].lastName ?? ''}',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}
