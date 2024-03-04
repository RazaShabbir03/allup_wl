import 'package:allup_user_app/auth/widgets/loading_dialog_full_screen.dart';
import 'package:allup_user_app/class_schedule/blocs/scheduled_gym_classes/scheduled_gym_classes_bloc.dart';
import 'package:allup_user_app/class_schedule/widgets/class_schedule_tile_widget.dart';
import 'package:allup_user_app/class_schedule/widgets/no_classes_widget.dart';
import 'package:allup_user_app/class_schedule/widgets/schedule_classes_calendar_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClassScheduleScreen extends StatefulWidget {
  const ClassScheduleScreen(
      {required this.bannerImage,
      required this.title,
      required this.categoryId,
      required this.gymId,
      super.key});
  final String categoryId;
  final String gymId;
  final String title;
  final String bannerImage;

  @override
  State<ClassScheduleScreen> createState() => _ClassScheduleScreenState();
}

class _ClassScheduleScreenState extends State<ClassScheduleScreen> {
  ScrollController? _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: BlocBuilder<ScheduledGymClassesBloc, ScheduledGymClassesState>(
        builder: (context, state) {
          if (state is ScheduledGymClassesInitial) {
            BlocProvider.of<ScheduledGymClassesBloc>(context)
                .add(GetScheduledGymClasses(
              gymId: widget.gymId,
              categoryId: widget.categoryId,
              forDate: DateTime.now(),
            ));
          }
          return NestedScrollView(
            controller: _scrollController,
            headerSliverBuilder: (ctx, innerBoxIsScrolled) => [
              SliverAppBar(
                centerTitle: true,
                titleSpacing: 0,
                leading: IconButton(
                  icon: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.background,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.arrow_back),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                automaticallyImplyLeading: false,
                expandedHeight: size.height * 0.20,
                flexibleSpace: FlexibleSpaceBar(
                  expandedTitleScale: 1.2,
                  title: Text(widget.title,
                      style: Theme.of(context).textTheme.displayMedium),
                  centerTitle: true,
                  titlePadding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  background: Stack(children: [
                    CachedNetworkImage(
                      imageUrl: widget.bannerImage,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(0.8)
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
                floating: true,
                pinned: true,
                snap: true,
              ),
              ScheduleClassesCalendarWidget()
            ],
            body:
                BlocConsumer<ScheduledGymClassesBloc, ScheduledGymClassesState>(
              listener: (context, state) {},
              builder: (context, state) {
                if (state.status == ScheduledGymClassesStatus.loading) {
                  return const Center(child: LoadingDialogFullScreen());
                } else if (state.gymClasses.isEmpty) {
                  return const NoClassesWidget();
                }
                return MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView.builder(
                    padding: EdgeInsets.only(top: 20.h),
                    // controller: _scrollController,
                    itemCount: state.gymClasses.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ClassScheduleTileWidget(
                          gymClass: state.gymClasses[index]);
                    },
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
