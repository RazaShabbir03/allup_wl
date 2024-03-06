import 'package:allup_user_app/auth/view/home_screen.dart';
import 'package:allup_user_app/auth/view/login_screen.dart';
import 'package:allup_user_app/auth/view/otp_verfication_screen.dart';
import 'package:allup_user_app/auth/view/register_screen.dart';
import 'package:allup_user_app/class_schedule/blocs/schedule_gymc_class_detail/schedule_gym_class_detail_bloc.dart';
import 'package:allup_user_app/class_schedule/blocs/scheduled_gym_classes/scheduled_gym_classes_bloc.dart';
import 'package:allup_user_app/class_schedule/repositories/schedule_gym_class_detail_repository.dart';
import 'package:allup_user_app/class_schedule/repositories/scheduled_gym_classes_repository.dart';
import 'package:allup_user_app/class_schedule/view/class_schedule_detail_screen.dart';
import 'package:allup_user_app/class_schedule/view/class_schedule_screen.dart';
import 'package:allup_user_app/dashboard/view/dashboard_screen.dart';
import 'package:allup_user_app/gym_access/view/gym_access_screen.dart';
import 'package:allup_user_app/my_bookings/blocs/my_classes/my_classes_bloc.dart';
import 'package:allup_user_app/my_bookings/blocs/session_contracts/session_contracts_bloc.dart';
import 'package:allup_user_app/my_bookings/repositories/my_classes_repository.dart';
import 'package:allup_user_app/my_bookings/repositories/session_contract_repository.dart';
import 'package:allup_user_app/my_bookings/view/my_bookings_screen.dart';
import 'package:allup_user_app/profile/view/profile_detail_screen.dart';
import 'package:allup_user_app/routes/route_names.dart';
import 'package:allup_user_app/services/graph_ql_service.dart';
import 'package:allup_user_app/services/navigation_service.dart';
import 'package:allup_user_app/utils/custom_page_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(navigatorKey: NavigationService.navigatorKey, routes: [
  /// Home
  GoRoute(
      path: Routes.homeRoute,
      builder: (context, state) {
        return const HomePage();
      }),

  /// Login
  GoRoute(
    path: Routes.loginRoute,
    builder: (context, state) {
      return const LoginScreen();
    },
  ),

  /// Login
  GoRoute(
    path: Routes.appLoginRoute,
    builder: (context, state) {
      return const LoginScreen();
    },
    pageBuilder: (context, state) => RouterTransitionFactory.getTransitionPage(
      context: context,
      state: state,
      child: const LoginScreen(),
      type: TransitionType.slideFromBottom, // fade|rotation|scale|size
    ),
  ),

  /// OTP
  GoRoute(
      path: '${Routes.otpRoute}/:phone',
      builder: (context, state) {
        return OTPVerificationScreen(
          phone: state.pathParameters['phone']!,
        );
      }),

  /// Register
  GoRoute(
      path: '${Routes.registerRoute}/:phone',
      builder: (context, state) {
        return RegisterScreen(
          phone: state.pathParameters['phone']!,
        );
      }),

  /// Dashboard
  GoRoute(
    path: Routes.dashboardRoute,
    pageBuilder: (context, state) => RouterTransitionFactory.getTransitionPage(
      context: context,
      state: state,
      child: const DashboardScreen(),
      type: TransitionType.slideFromTop,
    ),
  ),

  /// Profile
  GoRoute(
    path: Routes.profileDetailRoute,
    builder: (context, state) {
      return const ProfileDetail();
    },
  ),

  /// Class Schedule
  GoRoute(
    path: Routes.classSchedule,
    builder: (context, state) => RepositoryProvider(
      create: (context) =>
          ScheduledGymClassesRepository(client: GraphQLService.instance),
      child: BlocProvider(
        create: (context) => ScheduledGymClassesBloc(
            repository: context.read<ScheduledGymClassesRepository>()),
        child: ClassScheduleScreen(
          categoryId: state.uri.queryParameters['categoryId']!,
          gymId: state.uri.queryParameters['gymId']!,
          title: state.uri.queryParameters['title']!,
          bannerImage: state.uri.queryParameters['bannerImage']!,
        ),
      ),
    ),
  ),

  /// Class Schedule Detail
  GoRoute(
    path: Routes.classScheduleDetail,
    builder: (context, state) {
      return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ScheduleGymClassDetailBloc(
              repository: ScheduleGymClassDetailRepository(
                  client: GraphQLService.instance),
            ),
          ),
          BlocProvider.value(
            value: BlocProvider.of<ScheduledGymClassesBloc>(
                state.extra! as BuildContext),
          ),
        ],
        child: ClassScheduleDetailScreen(
          scheduleId: state.uri.queryParameters['scheduleId']!,
          bookedFor: state.uri.queryParameters['bookedFor']!,
          bookedTime: state.uri.queryParameters['bookedTime']!,
        ),
      );
    },
  ),

  ///Gym Access QR
  GoRoute(
    path: Routes.gymAccess,
    builder: (context, state) {
      return GymAccessScreen(
        qrCode: state.uri.queryParameters['qrCode']!,
        memberName: state.uri.queryParameters['memberName']!,
        profileImage: state.uri.queryParameters['profileImage']!,
        memberType: state.uri.queryParameters['memberType']!,
        memberSince: state.uri.queryParameters['memberSince']!,
        memberExpiry: state.uri.queryParameters['memberExpiry']!,
        memberStatus: state.uri.queryParameters['memberStatus']!,
        gymName: state.uri.queryParameters['gymName']!,
      );
    },
  ),

  /// My Bookings
  GoRoute(
    path: Routes.myBookings,
    builder: (context, state) {
      return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => SessionContractsBloc(
              repository:
                  SessionContractRepository(client: GraphQLService.instance),
            ),
          ),
          BlocProvider(
            create: (context) => MyClassesBloc(
              repository: MyClassesRepository(client: GraphQLService.instance),
            ),
          ),
        ],
        child: MyBookingsScreen(),
      );
    },
  ),
]);
