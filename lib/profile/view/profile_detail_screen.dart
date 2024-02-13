import 'package:allup_user_app/auth/blocs/bloc/auth_bloc.dart';
import 'package:allup_user_app/l10n/cubit/locale_cubit.dart';
import 'package:allup_user_app/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProfileDetail extends StatelessWidget {
  const ProfileDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Detail'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Profile Detail'),
            const Spacer(),
            ElevatedButton(
                onPressed: () {
                  BlocProvider.of<AuthBloc>(context).add(LogoutEvent());
                  context.go(Routes.loginRoute);
                },
                child: Text('Logout')),
            Row(
              textDirection: TextDirection.ltr,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Language:',
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.ltr,
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                ),
                InkWell(
                  onTap: () {
                    context.read<LocaleCubit>().changeLanguage(
                          context.read<LocaleCubit>().getLanguageCode() == 'ar'
                              ? 'en'
                              : 'ar',
                        );
                  },
                  child: Text(
                    context.read<LocaleCubit>().getLanguageCode() == 'ar'
                        ? ' English '
                        : ' عربي ',
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
