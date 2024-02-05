import 'package:allup_user_app/auth/blocs/bloc/auth_bloc.dart';
import 'package:allup_user_app/routes/route_names.dart';
import 'package:allup_user_app/utils/app_assets.dart';
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
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.authResponseStatus == AuthResponseStatus.valid) {
            // context.pushNamed(Routes.otpRoute);
          }
          if (state.authResponseStatus == AuthResponseStatus.nouser) {
            //delayed push

            context.push(Routes.loginRoute);
          }
          if (state.authResponseStatus == AuthResponseStatus.error) {
            //delayed push
            print('error');
          }
        },
        builder: (context, state) {
          if (state is AuthInitial) {
            BlocProvider.of<AuthBloc>(context).add(CheckAuth());
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
                    color: Colors.red,
                    radius: 20.r,
                  ),
                ),
              )
              // if (state.authResponseStatus == AuthResponseStatus.loading)

              // else
              //   Container(),
            ],
          );
        },
      ),
    );
  }
}
