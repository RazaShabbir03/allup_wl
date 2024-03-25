import 'package:allup_user_app/auth/blocs/bloc/auth_bloc.dart';
import 'package:allup_user_app/dashboard/blocs/bloc/dashboard_bloc.dart';
import 'package:allup_user_app/l10n/cubit/locale_cubit.dart';
import 'package:allup_user_app/l10n/l10n.dart';
import 'package:allup_user_app/profile/widgets/profile_options_widget.dart';
import 'package:allup_user_app/profile/widgets/profile_tile_widget.dart';
import 'package:allup_user_app/routes/route_names.dart';
import 'package:allup_user_app/theme/app_colors.dart';
import 'package:allup_user_app/utils/app_assets.dart';
import 'package:allup_user_app/widgets/back_button_widget.dart';
import 'package:allup_user_app/widgets/dp_placeholder_widget.dart';
import 'package:allup_user_app/widgets/image_asset_widget.dart';
import 'package:allup_user_app/widgets/svg_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProfileDetail extends StatelessWidget {
  const ProfileDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ImageAssetsWidget(
            image: Assets.bg2,
            height: 0.3.sh,
            fit: BoxFit.fill,
            width: double.infinity,
          ),
          SafeArea(
            child: BlocBuilder<DashboardBloc, DashboardState>(
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10.w,
                        ),
                        BackButtonWidget(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                    ImageAssetsWidget(
                      image: Assets.productLogo,
                      width: 0.4.sw,
                    ),
                    Text(
                      BlocProvider.of<AuthBloc>(context).state.gymName ?? '',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                            fontStyle: FontStyle.italic,
                          ),
                    ),
                    SizedBox(
                      height: 0.01.sh,
                    ),
                    SizedBox(
                      width: 0.9.sw,
                      child: ProfileCardWidget(
                        dashboardState: state,
                      ),
                    ),
                    SizedBox(
                      height: 0.02.sh,
                    ),
                    const ProfileOptionsWidget(),
                    const Spacer(),
                    Row(
                      textDirection: TextDirection.ltr,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Language:',
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.ltr,
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                        ),
                        InkWell(
                          onTap: () {
                            context.read<LocaleCubit>().changeLanguage(
                                  context
                                              .read<LocaleCubit>()
                                              .getLanguageCode() ==
                                          'ar'
                                      ? 'en'
                                      : 'ar',
                                );
                          },
                          child: Text(
                            context.read<LocaleCubit>().getLanguageCode() ==
                                    'ar'
                                ? ' English '
                                : ' عربي ',
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
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
                    SizedBox(
                        width: 0.9.sw,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<AuthBloc>(context)
                                .add(const LogoutEvent());
                            BlocProvider.of<DashboardBloc>(context)
                                .add(const SignOutEventDashboard());
                            context.go(Routes.loginRoute);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Theme.of(context).colorScheme.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SvgWidget(
                                path: Assets.signOutIcon,
                                height: 20,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                context.l10n.signOut,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                  fontSize: 16.sp,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontVariations: const [
                                    FontVariation('wght', 700)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
