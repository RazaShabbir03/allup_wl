import 'package:allup_user_app/auth/blocs/bloc/auth_bloc.dart';
import 'package:allup_user_app/auth/widgets/loading_dialog_full_screen.dart';
import 'package:allup_user_app/dashboard/blocs/bloc/dashboard_bloc.dart';
import 'package:allup_user_app/dashboard/widgets/dashboard_carousel_banner_widget.dart';
import 'package:allup_user_app/dashboard/widgets/home_kpi_widget.dart';
import 'package:allup_user_app/dashboard/widgets/home_tabs_horizontal_widget.dart';
import 'package:allup_user_app/l10n/l10n.dart';
import 'package:allup_user_app/routes/route_names.dart';
import 'package:allup_user_app/utils/app_assets.dart';
import 'package:allup_user_app/utils/custom_toast_bottom.dart';
import 'package:allup_user_app/utils/helper_functions.dart';
import 'package:allup_user_app/widgets/dp_placeholder_widget.dart';
import 'package:allup_user_app/widgets/image_asset_widget.dart';
import 'package:allup_user_app/widgets/svg_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    BlocProvider.of<DashboardBloc>(context).add(const RefreshDashboard());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: BlocConsumer<DashboardBloc, DashboardState>(
        listener: (context, state) {
          // if (state.dashboardStatus == DashboardStatus.loading) {
          //   DialogBox.showLoadingDialog(context);
          // }
          if (state.dashboardStatus == DashboardStatus.success) {
            // BlocProvider.of<DashboardBloc>(context)
            //     .add(const RefreshDashboard());
            DialogBox.hideLoadingDialog(context);
          }
          if (state.dashboardStatus == DashboardStatus.error) {
            DialogBox.hideLoadingDialog(context);
            ToastUtils.showErrorToast(
              context,
              context.l10n.somethingWentWrongErrorMessage,
            );
          }
        },
        builder: (context, state) {
          return Stack(
            children: <Widget>[
              Container(
                height: size.height,
                width: double.infinity,
                color: Theme.of(context).colorScheme.primary,
              ),
              Stack(
                children: [
                  ImageAssetsWidget(
                    image: Assets.loginScreenBgPicture,
                    height: size.height * 0.8,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                  SafeArea(
                    bottom: false,
                    child: SizedBox(
                      height: 100.h,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                context.push(Routes.profileDetailRoute);
                              },
                              child: const DpPlaceHolderWidget(),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    state.user?.firstName ?? '',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(
                                          letterSpacing: 0.5,
                                          fontSize: 27.sp,
                                          fontWeight: FontWeight.w700,
                                        ),
                                  ),
                                  Text(
                                    BlocProvider.of<AuthBloc>(context)
                                            .state
                                            .gymName ??
                                        'N/A',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            InkWell(
                              onTap: () {
                                print(state.gymId);
                              },
                              child: const SvgWidget(
                                path: Assets.scanIcon,
                                height: 40,
                                width: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SafeArea(
                bottom: false,
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: CupertinoScrollbar(
                    child: CustomScrollView(
                      physics: const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics(),
                      ),
                      slivers: [
                        CupertinoSliverRefreshControl(
                          refreshTriggerPullDistance: 100.h,
                          builder: (
                            BuildContext context,
                            RefreshIndicatorMode refreshState,
                            double pulledExtent,
                            double refreshTriggerPullDistance,
                            double refreshIndicatorExtent,
                          ) {
                            final percentageComplete = clampDouble(
                              pulledExtent / refreshTriggerPullDistance,
                              0,
                              1,
                            );
                            return Center(
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: <Widget>[
                                  Positioned(
                                    top: 20,
                                    left: 0,
                                    right: 0,
                                    child: HelperFunctions
                                        .buildIndicatorForRefreshState(
                                      refreshState,
                                      15.r,
                                      percentageComplete,
                                      context,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          refreshIndicatorExtent: 100.h,
                          onRefresh: () async {
                            BlocProvider.of<DashboardBloc>(context)
                                .add(const RefreshDashboard());
                            await Future<void>.delayed(
                              const Duration(seconds: 2),
                            );
                          },
                        ),
                        SliverFillRemaining(
                          hasScrollBody: false,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.background,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .background,
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 5.w,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(30),
                                            topRight: Radius.circular(30),
                                          ),
                                          color: Theme.of(context)
                                              .colorScheme
                                              .background,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary
                                                  .withOpacity(0.2),
                                              spreadRadius: 10,
                                              blurRadius: 10,
                                              offset: const Offset(0, -5),
                                            ),
                                          ],
                                        ),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            HomeKPIWidget(
                                              gymMembershipInfo:
                                                  state.gymMembershipInfo,
                                            ),
                                            const HomeTabsHorizontalWidget(),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Expanded(
                                  child: Column(
                                    children: [
                                      DashboardCarouselBannerWidget(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
