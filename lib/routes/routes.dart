import 'package:allup_user_app/auth/blocs/bloc/auth_bloc.dart';
import 'package:allup_user_app/auth/repositories/auth_repository.dart';
import 'package:allup_user_app/auth/view/home_screen.dart';
import 'package:allup_user_app/auth/view/login_screen.dart';
import 'package:allup_user_app/auth/view/otp_verfication_screen.dart';
import 'package:allup_user_app/auth/view/register_screen.dart';
import 'package:allup_user_app/dashboard/view/dashboard_screen.dart';
import 'package:allup_user_app/routes/route_names.dart';
import 'package:allup_user_app/services/graph_ql_service.dart';
import 'package:allup_user_app/services/navigation_service.dart';
import 'package:allup_user_app/services/page_not_found.dart';
import 'package:allup_user_app/utils/custom_page_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(navigatorKey: NavigationService.navigatorKey, routes: [
  GoRoute(
      path: Routes.homeRoute,
      builder: (context, state) {
        return const HomePage();
      }),
  GoRoute(
    path: Routes.loginRoute,
    builder: (context, state) {
      return const LoginScreen();
    },
  ),
  GoRoute(
    path: Routes.appLoginRoute,
    builder: (context, state) {
      return const LoginScreen();
    },
    pageBuilder: (context, state) => RouterTransitionFactory.getTransitionPage(
      context: context,
      state: state,
      child: const LoginScreen(),
      type: TransitionType.slideFromTop, // fade|rotation|scale|size
    ),
  ),
  GoRoute(
      path: '${Routes.otpRoute}/:phone',
      builder: (context, state) {
        return OTPVerificationScreen(
          phone: state.pathParameters['phone']!,
        );
      }),
  GoRoute(
      path: '${Routes.registerRoute}/:phone',
      builder: (context, state) {
        return RegisterScreen(
          phone: state.pathParameters['phone']!,
        );
      }),
  GoRoute(
    path: '${Routes.dashboardRoute}',
    builder: (context, state) {
      return const DashboardScreen();
    },
    pageBuilder: (context, state) => RouterTransitionFactory.getTransitionPage(
      context: context,
      state: state,
      child: const DashboardScreen(),
      type: TransitionType.slideFromTop, // fade|rotation|scale|size
    ),
  ),
  // GoRoute(
  //     path: '*',
  //     builder: (context, state) {
  //       return const PageNotFound();
  //     }),
]);
