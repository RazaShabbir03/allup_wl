import 'package:allup_user_app/auth/blocs/bloc/auth_bloc.dart';
import 'package:allup_user_app/class_schedule/blocs/tab_gym_classes_bloc/tab_gym_classes_bloc.dart';
import 'package:allup_user_app/class_schedule/widgets/faded_gradient_by_category_widget.dart';
import 'package:allup_user_app/routes/route_names.dart';
import 'package:allup_user_app/utils/loading_dialog_full_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class MultiGymClassesByCategoryWidget extends StatelessWidget {
  const MultiGymClassesByCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Theme.of(context).colorScheme.background,
      child: BlocBuilder<TabGymClassesBloc, TabGymClassesState>(
        builder: (context, state) {
          if (state.fetchStatus == TabGymClassesStatus.loading) {
            return LoadingDialogFullScreen();
          }
          return ListView.builder(
              padding: EdgeInsets.all(15.r),
              itemCount: state.gymClassesByCategory.length,
              itemBuilder: (context, index) {
                return Container(
                    margin: EdgeInsets.only(bottom: 20.h),
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: FadedGradientByCategoryWidget(
                      onTap: () {
                        context.push(
                          '${Routes.classSchedule}?categoryId=${state.gymClassesByCategory[index].categoryId}&gymId=${BlocProvider.of<AuthBloc>(context).state.selectedGymId}&title=${state.gymClassesByCategory[index].categoryName}&bannerImage=${state.gymClassesByCategory[index].image}',
                        );
                      },
                      noOfClasses: state.gymClassesByCategory[index].count,
                      imageUrl: state.gymClassesByCategory[index].image,
                      text: state.gymClassesByCategory[index].categoryName,
                    ));
              });
        },
      ),
    );
  }
}
