import 'package:allup_user_app/auth/blocs/bloc/auth_bloc.dart';
import 'package:allup_user_app/class_schedule/blocs/tab_gym_classes_bloc/tab_gym_classes_bloc.dart';
import 'package:allup_user_app/class_schedule/widgets/multi_gym_class_by_category_widget.dart';
import 'package:allup_user_app/class_schedule/widgets/multi_gym_class_by_date_widget.dart';
import 'package:allup_user_app/class_schedule/widgets/multi_gym_class_by_instructor_widget.dart';
import 'package:allup_user_app/l10n/l10n.dart';
import 'package:allup_user_app/utils/app_assets.dart';
import 'package:allup_user_app/widgets/back_button_widget.dart';
import 'package:allup_user_app/widgets/image_asset_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class MultiClassScheduleScreen extends StatefulWidget {
  const MultiClassScheduleScreen({super.key});

  @override
  State<MultiClassScheduleScreen> createState() =>
      _MultiClassScheduleScreenState();
}

class _MultiClassScheduleScreenState extends State<MultiClassScheduleScreen>
    with TickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const ImageAssetsWidget(
              width: double.infinity, image: Assets.loginScreenBgPicture),
          SafeArea(
            bottom: false,
            child: BlocConsumer<TabGymClassesBloc, TabGymClassesState>(
              listener: (context, state) {},
              builder: (context, state) {
                if (state is TabGymClassesInitial) {
                  BlocProvider.of<TabGymClassesBloc>(context)
                      .add(GetTabScheduledGymClassesEvent(
                    forDate: DateTime.now(),
                    gymId:
                        BlocProvider.of<AuthBloc>(context).state.selectedGymId!,
                  ));
                }
                return Column(
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
                    Align(
                      child: Text(
                        'FIND A CLASS',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ),
                    Divider(
                      color: Theme.of(context).dividerColor.withOpacity(0.5),
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    TabBar(
                      physics: const NeverScrollableScrollPhysics(),
                      onTap: (index) {
                        BlocProvider.of<TabGymClassesBloc>(context)
                            .add(TabEvent(tabIndex: index));
                      },
                      controller: _tabController,
                      padding: EdgeInsets.only(left: 20.w, right: 20.w),
                      indicatorColor: Theme.of(context).colorScheme.secondary,
                      labelColor: Theme.of(context).colorScheme.secondary,
                      dividerColor: Colors.transparent,
                      labelPadding: EdgeInsets.zero,
                      labelStyle: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(
                              fontVariations: [
                            const FontVariation('wght', 700)
                          ],
                              fontSize: 14.sp,
                              letterSpacing: 0.7,
                              fontWeight: FontWeight.bold),
                      unselectedLabelStyle: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              color: Theme.of(context).colorScheme.secondary),
                      unselectedLabelColor:
                          Theme.of(context).colorScheme.secondary,
                      tabs: const [
                        Tab(
                          text: 'BY DATE',
                        ),
                        Tab(
                          text: 'BY INSTRUCTOR',
                        ),
                        Tab(
                          text: 'BY CATEGORY',
                        ),
                      ],
                    ),
                    Expanded(
                      child: Builder(
                        builder: (_) {
                          if (_tabController!.index == 0) {
                            return MultiGymClassesByDateWidget();
                          }
                          if (_tabController!.index == 1) {
                            return MultiGymClassesByInstructorWidget();
                          } else {
                            return MultiGymClassesByCategoryWidget();
                          }
                        },
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
