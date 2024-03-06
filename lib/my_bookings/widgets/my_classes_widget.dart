import 'dart:ui';

import 'package:allup_user_app/auth/blocs/bloc/auth_bloc.dart';
import 'package:allup_user_app/my_bookings/blocs/my_classes/my_classes_bloc.dart';
import 'package:allup_user_app/my_bookings/widgets/my_classes_tile_widget.dart';
import 'package:allup_user_app/my_bookings/widgets/no_classes_widget.dart';
import 'package:allup_user_app/schema.graphql.dart';
import 'package:allup_user_app/utils/loading_dialog_full_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyClassesWidget extends StatefulWidget {
  const MyClassesWidget({super.key});

  @override
  State<MyClassesWidget> createState() => _SessionContractsState();
}

class _SessionContractsState extends State<MyClassesWidget>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MyClassesBloc, MyClassesState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state is MyClassesInitial) {
          final state = BlocProvider.of<AuthBloc>(context).state;
          BlocProvider.of<MyClassesBloc>(context).add(FetchMyClasses(
              timeZoneIdentifier: state.currentTimeZone,
              location: Input$GISLocationInput(
                  latitude: 25.09619, longitude: 55.167413),
              gymId: BlocProvider.of<AuthBloc>(context).state.selectedGymId!));
        }
        return Column(
          children: [
            TabBar(
              onTap: (index) {
                if (index == 0) {
                  BlocProvider.of<MyClassesBloc>(context).add(
                    const SetPeriodType(
                        periodType: Enum$MembershipGymClassPeriodType.PREVIOUS),
                  );
                }
                if (index == 1) {
                  BlocProvider.of<MyClassesBloc>(context).add(
                    const SetPeriodType(
                        periodType: Enum$MembershipGymClassPeriodType.TODAY),
                  );
                }
                if (index == 2) {
                  BlocProvider.of<MyClassesBloc>(context).add(
                    const SetPeriodType(
                        periodType: Enum$MembershipGymClassPeriodType.UPCOMING),
                  );
                }
                if (index == 3) {
                  BlocProvider.of<MyClassesBloc>(context).add(
                    const SetPeriodType(
                        periodType: Enum$MembershipGymClassPeriodType.CANCELED),
                  );
                }
              },
              controller: _tabController,
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              indicatorColor: Theme.of(context).colorScheme.secondary,
              labelColor: Theme.of(context).colorScheme.secondary,
              dividerColor: Colors.transparent,
              labelPadding: EdgeInsets.zero,
              labelStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontVariations: [const FontVariation('wght', 700)],
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
              unselectedLabelColor: Theme.of(context).colorScheme.secondary,
              tabs: const [
                Tab(
                  text: 'PREVIOUS',
                ),
                Tab(
                  text: 'TODAY',
                ),
                Tab(
                  text: 'UPCOMING',
                ),
                Tab(
                  text: 'CANCELLED',
                ),
              ],
            ),
            Expanded(
                child: ClassesTileWidget(
              state: state,
            )),
          ],
        );
      },
    );
  }
}

class ClassesTileWidget extends StatelessWidget {
  const ClassesTileWidget({
    required this.state,
    super.key,
  });
  final MyClassesState state;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Theme.of(context).colorScheme.background,
      child: Builder(
        builder: (_) {
          if (state.status == FetchMyClassesStatus.loading) {
            return const Center(child: LoadingDialogFullScreen());
          }
          if (state.classes.isEmpty) {
            return const EmptyClassesWidget();
          } else {
            return ListView.builder(
                padding: EdgeInsets.only(top: 20.h),
                itemCount: state.classes.length,
                itemBuilder: (context, index) {
                  return MyClassTileWidget(
                    myClass: state.classes[index],
                  );
                });
          }
        },
      ),
    );
  }
}

// class PreviousSessionContractWidget extends StatelessWidget {
//   const PreviousSessionContractWidget({
//     required this.state,
//     super.key,
//   });
//   final SessionContractsState state;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Theme.of(context).colorScheme.background,
//       child: Builder(
//         builder: (context) {
//           if (state.bookedPTSessionStatus == BookedPTSessionStatus.loading) {
//             return const Center(child: LoadingDialogFullScreen());
//           }
//           if (state.bookedPTSessionStatus == BookedPTSessionStatus.empty) {
//             return const EmptyPTSessionsWidget();
//           }
//           if (state.previousPTSessions.isEmpty) {
//             return const EmptyPTSessionsWidget();
//           } else {
//             return ListView.builder(
//                 padding: EdgeInsets.only(top: 20.h),
//                 itemCount: state.previousPTSessions.length,
//                 itemBuilder: (context, index) {
//                   return SessionContractPreviousTileWidget(
//                     sessionContract: state.previousPTSessions[index],
//                   );
//                 });
//           }
//         },
//       ),
//     );
//   }
// }

// class UpcomingSessionContractWidget extends StatelessWidget {
//   const UpcomingSessionContractWidget({
//     required this.state,
//     super.key,
//   });
//   final SessionContractsState state;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Theme.of(context).colorScheme.background,
//       child: Builder(
//         builder: (context) {
//           if (state.bookedPTSessionStatus == BookedPTSessionStatus.loading) {
//             return const Center(child: LoadingDialogFullScreen());
//           }
//           if (state.bookedPTSessionStatus == BookedPTSessionStatus.empty) {
//             return const EmptyPTSessionsWidget();
//           }
//           if (state.upcomingPTSessions.isEmpty) {
//             return const EmptyPTSessionsWidget();
//           } else {
//             return ListView.builder(
//                 padding: EdgeInsets.only(top: 20.h),
//                 itemCount: state.upcomingPTSessions.length,
//                 itemBuilder: (context, index) {
//                   return SessionContractUpcomingTileWidget(
//                     sessionContract: state.upcomingPTSessions[index],
//                   );
//                 });
//           }
//         },
//       ),
//     );
//   }
// }

// class CancelledSessionContractWidget extends StatelessWidget {
//   const CancelledSessionContractWidget({
//     required this.state,
//     super.key,
//   });
//   final SessionContractsState state;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Theme.of(context).colorScheme.background,
//       child: Builder(
//         builder: (context) {
//           if (state.bookedPTSessionStatus == BookedPTSessionStatus.loading) {
//             return const Center(child: LoadingDialogFullScreen());
//           }
//           if (state.bookedPTSessionStatus == BookedPTSessionStatus.empty) {
//             return const EmptyPTSessionsWidget();
//           }
//           if (state.cancelledPTSessions.isEmpty) {
//             return const EmptyPTSessionsWidget();
//           } else {
//             return ListView.builder(
//                 padding: EdgeInsets.only(top: 20.h),
//                 itemCount: state.cancelledPTSessions.length,
//                 itemBuilder: (context, index) {
//                   return SessionContractCancelledTileWidget(
//                     sessionContract: state.cancelledPTSessions[index],
//                   );
//                 });
//           }
//         },
//       ),
//     );
//   }
// }
