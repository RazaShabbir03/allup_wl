import 'dart:ui';

import 'package:allup_user_app/auth/blocs/bloc/auth_bloc.dart';
import 'package:allup_user_app/my_bookings/blocs/session_contracts/session_contracts_bloc.dart';
import 'package:allup_user_app/my_bookings/widgets/no_pt_sessions_widget.dart';
import 'package:allup_user_app/my_bookings/widgets/session_contract_bottom_sheet.dart';
import 'package:allup_user_app/my_bookings/widgets/session_contract_cancelled_widget_tile.dart';
import 'package:allup_user_app/my_bookings/widgets/session_contract_previous_tile_widget.dart';
import 'package:allup_user_app/my_bookings/widgets/session_contract_tile_widget.dart';
import 'package:allup_user_app/my_bookings/widgets/session_contract_upcoming_widget_tile.dart';
import 'package:allup_user_app/utils/loading_dialog_full_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SessionContracts extends StatefulWidget {
  const SessionContracts({super.key});

  @override
  State<SessionContracts> createState() => _SessionContractsState();
}

class _SessionContractsState extends State<SessionContracts>
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
    return BlocConsumer<SessionContractsBloc, SessionContractsState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state is SessionContractsInitial) {
          BlocProvider.of<SessionContractsBloc>(context).add(
              FetchSessionContracts(
                  gymId:
                      BlocProvider.of<AuthBloc>(context).state.selectedGymId!));
        }
        return Column(
          children: [
            InkWell(
              onTap: () {
                showSessionContractModalSheet(context,
                    sessionContracts: state.sessionContracts!,
                    onSelected: (sessionContract) {
                  if (sessionContract != null) {
                    BlocProvider.of<SessionContractsBloc>(context).add(
                        SetSessionContract(sessionContract: sessionContract));
                  }
                });
              },
              child: Container(
                color:
                    Theme.of(context).colorScheme.background.withOpacity(0.2),
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 5.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Session Contract',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                        ),
                        Text(state.selectedSessionContractName ?? '--',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith()),
                      ],
                    ),
                    Container(
                      child: Icon(
                        Icons.expand_circle_down_rounded,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    )
                  ],
                ),
              ),
            ),
            TabBar(
              onTap: (index) {
                BlocProvider.of<SessionContractsBloc>(context)
                    .add(TabEvent(index: index));
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
              child: Builder(
                builder: (_) {
                  if (_tabController!.index == 0) {
                    return PreviousSessionContractWidget(state: state);
                  }
                  if (_tabController!.index == 1) {
                    return TodaySessionContractWidget(state: state);
                  }
                  if (_tabController!.index == 2) {
                    return UpcomingSessionContractWidget(state: state);
                  } else {
                    return CancelledSessionContractWidget(state: state);
                  }
                },
              ),
            ),
          ],
        );
      },
    );
  }
}

class TodaySessionContractWidget extends StatelessWidget {
  const TodaySessionContractWidget({
    required this.state,
    super.key,
  });
  final SessionContractsState state;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      child: Builder(
        builder: (_) {
          if (state.bookedPTSessionStatus == BookedPTSessionStatus.loading) {
            return const Center(child: LoadingDialogFullScreen());
          }
          if (state.bookedPTSessionStatus == BookedPTSessionStatus.empty) {
            return const EmptyPTSessionsWidget();
          }
          if (state.todayPTSessions.isEmpty) {
            return const EmptyPTSessionsWidget();
          } else {
            return ListView.builder(
                padding: EdgeInsets.only(top: 20.h),
                itemCount: state.todayPTSessions.length,
                itemBuilder: (context, index) {
                  return SessionContractTileWidget(
                    sessionContract: state.todayPTSessions[index],
                  );
                });
          }
        },
      ),
    );
  }
}

class PreviousSessionContractWidget extends StatelessWidget {
  const PreviousSessionContractWidget({
    required this.state,
    super.key,
  });
  final SessionContractsState state;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      child: Builder(
        builder: (context) {
          if (state.bookedPTSessionStatus == BookedPTSessionStatus.loading) {
            return const Center(child: LoadingDialogFullScreen());
          }
          if (state.bookedPTSessionStatus == BookedPTSessionStatus.empty) {
            return const EmptyPTSessionsWidget();
          }
          if (state.previousPTSessions.isEmpty) {
            return const EmptyPTSessionsWidget();
          } else {
            return ListView.builder(
                padding: EdgeInsets.only(top: 20.h),
                itemCount: state.previousPTSessions.length,
                itemBuilder: (context, index) {
                  return SessionContractPreviousTileWidget(
                    sessionContract: state.previousPTSessions[index],
                  );
                });
          }
        },
      ),
    );
  }
}

class UpcomingSessionContractWidget extends StatelessWidget {
  const UpcomingSessionContractWidget({
    required this.state,
    super.key,
  });
  final SessionContractsState state;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      child: Builder(
        builder: (context) {
          if (state.bookedPTSessionStatus == BookedPTSessionStatus.loading) {
            return const Center(child: LoadingDialogFullScreen());
          }
          if (state.bookedPTSessionStatus == BookedPTSessionStatus.empty) {
            return const EmptyPTSessionsWidget();
          }
          if (state.upcomingPTSessions.isEmpty) {
            return const EmptyPTSessionsWidget();
          } else {
            return ListView.builder(
                padding: EdgeInsets.only(top: 20.h),
                itemCount: state.upcomingPTSessions.length,
                itemBuilder: (context, index) {
                  return SessionContractUpcomingTileWidget(
                    sessionContract: state.upcomingPTSessions[index],
                  );
                });
          }
        },
      ),
    );
  }
}

class CancelledSessionContractWidget extends StatelessWidget {
  const CancelledSessionContractWidget({
    required this.state,
    super.key,
  });
  final SessionContractsState state;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      child: Builder(
        builder: (context) {
          if (state.bookedPTSessionStatus == BookedPTSessionStatus.loading) {
            return const Center(child: LoadingDialogFullScreen());
          }
          if (state.bookedPTSessionStatus == BookedPTSessionStatus.empty) {
            return const EmptyPTSessionsWidget();
          }
          if (state.cancelledPTSessions.isEmpty) {
            return const EmptyPTSessionsWidget();
          } else {
            return ListView.builder(
                padding: EdgeInsets.only(top: 20.h),
                itemCount: state.cancelledPTSessions.length,
                itemBuilder: (context, index) {
                  return SessionContractCancelledTileWidget(
                    sessionContract: state.cancelledPTSessions[index],
                  );
                });
          }
        },
      ),
    );
  }
}
