import 'package:allup_user_app/auth/blocs/bloc/auth_bloc.dart';
import 'package:allup_user_app/dashboard/schemas/gym_classes_by_categories.graphql.dart';
import 'package:allup_user_app/dashboard/widgets/faded_gradient_explore_widget.dart';
import 'package:allup_user_app/l10n/l10n.dart';
import 'package:allup_user_app/routes/route_names.dart';
import 'package:allup_user_app/utils/app_text_style.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ExploreClassesWidget extends StatelessWidget {
  final List<Query$GymClassesByCategory$gymClassesByCategoryV2$list?>
      classCategories;
  const ExploreClassesWidget({super.key, required this.classCategories});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    if (classCategories.isNotEmpty) {
      return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                l10n.exploreUpcoming.toUpperCase(),
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Theme.of(context).shadowColor.withOpacity(0.65),
                    fontWeight: FontWeight.w200),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                l10n.classesOnThisGym,
                style: AppTextStyle.rubikStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 170.h,
                child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(
                          width: 20.w,
                        ),
                    scrollDirection: Axis.horizontal,
                    itemCount: classCategories.length,
                    itemBuilder: (context, index) {
                      return Container(
                          margin: EdgeInsets.only(bottom: 20.h),
                          width: 250,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: FadedGradientImageWithText(
                            onTap: () {
                              context.push(
                                '${Routes.classSchedule}?categoryId=${classCategories[index]?.categoryId}&gymId=${BlocProvider.of<AuthBloc>(context).state.selectedGymId}&title=${classCategories[index]?.categoryName}&bannerImage=${classCategories[index]?.image}',
                              );
                            },
                            imageUrl: classCategories[index]?.image,
                            text: classCategories[index]?.categoryName,
                          ));
                    }),
              ),
            ],
          ),
        ),
      );
    } else {
      return const SizedBox();
    }
  }
}
