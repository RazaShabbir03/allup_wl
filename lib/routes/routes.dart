import 'package:allup_user_app/auth/blocs/bloc/auth_bloc.dart';
import 'package:allup_user_app/auth/repositories/auth_repository.dart';
import 'package:allup_user_app/auth/view/home_screen.dart';
import 'package:allup_user_app/auth/view/login_screen.dart';
import 'package:allup_user_app/auth/view/otp_verfication_screen.dart';
import 'package:allup_user_app/routes/route_names.dart';
import 'package:allup_user_app/services/graph_ql_service.dart';
import 'package:allup_user_app/services/navigation_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(navigatorKey: NavigationService.navigatorKey, routes: [
  GoRoute(
    path: Routes.loginRoute,
    builder: (context, state) {
      return const LoginScreen();
    },
  ),
  GoRoute(
      path: '${Routes.otpRoute}/:phone',
      builder: (context, state) {
        return OTPVerificationScreen(
          phone: state.pathParameters['phone']!,
        );
      }),
  GoRoute(
      path: Routes.homeRoute,
      builder: (context, state) {
        return const HomePage();
      }),
]);
