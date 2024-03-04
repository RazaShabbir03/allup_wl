import 'package:allup_user_app/auth/view/home_screen.dart';
import 'package:allup_user_app/auth/view/login_screen.dart';
import 'package:allup_user_app/auth/view/otp_verfication_screen.dart';
import 'package:allup_user_app/auth/view/register_screen.dart';
import 'package:allup_user_app/class_schedule/blocs/scheduled_gym_classes/scheduled_gym_classes_bloc.dart';
import 'package:allup_user_app/class_schedule/repositories/scheduled_gym_classes_repository.dart';
import 'package:allup_user_app/class_schedule/view/class_schedule_screen.dart';
import 'package:allup_user_app/dashboard/view/dashboard_screen.dart';
import 'package:allup_user_app/profile/view/profile_detail_screen.dart';
import 'package:allup_user_app/routes/route_names.dart';
import 'package:allup_user_app/services/graph_ql_service.dart';
import 'package:allup_user_app/services/navigation_service.dart';
import 'package:allup_user_app/utils/custom_page_route.dart';
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
    path: '${Routes.classSchedule}',
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
  )
]);
