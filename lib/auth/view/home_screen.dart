import 'package:allup_user_app/auth/blocs/bloc/auth_bloc.dart';
import 'package:allup_user_app/dashboard/blocs/bloc/dashboard_bloc.dart';
import 'package:allup_user_app/l10n/l10n.dart';
import 'package:allup_user_app/routes/route_names.dart';
import 'package:allup_user_app/utils/app_assets.dart';
import 'package:allup_user_app/utils/custom_toast_bottom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<DashboardBloc, DashboardState>(
        listener: (context, state) {
          if (state.refreshDashboardStatus == RefreshDashboardStatus.success) {
            context.pushReplacement(Routes.dashboardRoute);
          }
          if (state.refreshDashboardStatus == RefreshDashboardStatus.error) {
            context.go(Routes.loginRoute);
            ToastUtils.showErrorToast(
                context, context.l10n.somethingWentWrongErrorMessage);
          }
        },
        child: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state.authResponseStatus == AuthResponseStatus.valid) {
              BlocProvider.of<DashboardBloc>(context).add(RefreshDashboard(
                gymId: BlocProvider.of<AuthBloc>(context).state.selectedGymId!,
              ));
            }
            if (state.authResponseStatus == AuthResponseStatus.nouser) {
              context.pushReplacement(Routes.loginRoute);
            }
            if (state.authResponseStatus == AuthResponseStatus.error) {
              context.pushReplacement(Routes.loginRoute);
            }
          },
          builder: (context, state) {
            if (state is AuthInitial) {
              BlocProvider.of<AuthBloc>(context).add(const CheckAuth());
            }
            return Stack(
              children: [
                Positioned.fill(
                    child: Image.asset(Assets.homePageBg, fit: BoxFit.fill)),
                Positioned(
                  top: 0,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: CupertinoActivityIndicator(
                      color: Theme.of(context).colorScheme.onError,
                      radius: 20.r,
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
