import 'package:allup_user_app/dashboard/blocs/bloc/dashboard_bloc.dart';
import 'package:allup_user_app/profile/blocs/switch_acccount_bloc/switch_account_bloc.dart';
import 'package:allup_user_app/profile/widgets/switch_account_list_view.dart';
import 'package:allup_user_app/routes/route_names.dart';
import 'package:allup_user_app/utils/app_assets.dart';
import 'package:allup_user_app/utils/custom_toast_bottom.dart';
import 'package:allup_user_app/utils/loading_dialog_full_screen.dart';
import 'package:allup_user_app/widgets/back_button_widget.dart';
import 'package:allup_user_app/widgets/image_asset_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SwitchAccountScreen extends StatelessWidget {
  const SwitchAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          ImageAssetsWidget(
              fit: BoxFit.fill,
              height: size.height * 0.35,
              width: double.infinity,
              image: Assets.loginScreenBgPicture),
          SafeArea(
            child: MultiBlocListener(
              listeners: [
                BlocListener<SwitchAccountBloc, SwitchAccountState>(
                  listener: (context, state) {
                    if (state.switchAccountStatus ==
                        SwitchAccountStatus.loading) {
                      DialogBox.showLoadingDialog(context);
                    }
                    if (state.switchAccountStatus ==
                        SwitchAccountStatus.success) {
                      DialogBox.hideLoadingDialog(context);
                      BlocProvider.of<DashboardBloc>(context)
                          .add(SwitchAccountDashboardRefresh(
                        displayPicture: state.selectedSlot?.photo,
                        gymMembershipInfo: state.gymMembershipInfo,
                        userId: state.selectedSlot?.id,
                        fullName:
                            '${state.selectedSlot?.firstName} ${(state.selectedSlot?.lastName ?? '')}',
                        purchasedMembershipResponse:
                            BlocProvider.of<SwitchAccountBloc>(context)
                                .state
                                .purchasedMembershipResponse!,
                      ));
                    }
                    if (state.switchAccountStatus ==
                        SwitchAccountStatus.error) {
                      DialogBox.hideLoadingDialog(context);
                      ToastUtils.showErrorToast(
                        context,
                        state.switchAccountErrorMessage ?? 'Error occurred',
                      );
                    }
                  },
                ),
                BlocListener<DashboardBloc, DashboardState>(
                  listener: (context, state) {
                    if (state.switchAccountDashboardStatus ==
                        SwitchAccountDashboardStatus.success) {
                      if (BlocProvider.of<SwitchAccountBloc>(context)
                              .state
                              .purchasedMembershipResponse !=
                          null) {
                        context.go(
                          Routes.dashboardRoute,
                        );
                        ToastUtils.showSuccessToast(
                          context,
                          'Account switched successfully',
                        );
                      }
                    }
                  },
                ),
              ],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: BackButtonWidget(
                      onPressed: () {
                        context.pop();
                      },
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Align(
                    child: Text(
                      'Switch Account',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const SwitchAccountListWidget(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
