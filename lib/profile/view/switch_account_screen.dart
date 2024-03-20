import 'package:allup_user_app/auth/blocs/bloc/auth_bloc.dart';
import 'package:allup_user_app/dashboard/blocs/bloc/dashboard_bloc.dart';
import 'package:allup_user_app/profile/blocs/switch_acccount_bloc/switch_account_bloc.dart';
import 'package:allup_user_app/utils/app_assets.dart';
import 'package:allup_user_app/utils/custom_toast_bottom.dart';
import 'package:allup_user_app/utils/dialogs.dart';
import 'package:allup_user_app/utils/loading_dialog_full_screen.dart';
import 'package:allup_user_app/widgets/back_button_widget.dart';
import 'package:allup_user_app/widgets/dp_placeholder_widget.dart';
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
            child: BlocListener<SwitchAccountBloc, SwitchAccountState>(
              listener: (context, state) {
                if (state.switchAccountStatus == SwitchAccountStatus.loading) {
                  DialogBox.showLoadingDialog(context);
                }
                if (state.switchAccountStatus == SwitchAccountStatus.success) {
                  DialogBox.hideLoadingDialog(context);
                  ToastUtils.showSuccessToast(
                    context,
                    'Account switched successfully',
                  );
                }
                if (state.switchAccountStatus == SwitchAccountStatus.error) {
                  DialogBox.hideLoadingDialog(context);
                  ToastUtils.showErrorToast(
                    context,
                    state.switchAccountErrorMessage ?? 'Error occurred',
                  );
                }
              },
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
                  SizedBox(
                    height: 170.h,
                    child: BlocBuilder<SwitchAccountBloc, SwitchAccountState>(
                      builder: (context, state) {
                        if (state is SwitchAccountInitial) {
                          BlocProvider.of<SwitchAccountBloc>(context)
                              .add(GetLinkedAccountsEvent(
                            gymId: BlocProvider.of<AuthBloc>(context)
                                .state
                                .selectedGymId!,
                            parentSlot: Slot(
                                firstName:
                                    BlocProvider.of<DashboardBloc>(context)
                                            .state
                                            .user
                                            ?.firstName ??
                                        '',
                                lastName:
                                    BlocProvider.of<DashboardBloc>(context)
                                            .state
                                            .user
                                            ?.firstName ??
                                        '',
                                id: BlocProvider.of<DashboardBloc>(context)
                                        .state
                                        .user
                                        ?.id ??
                                    '',
                                photo: BlocProvider.of<DashboardBloc>(context)
                                        .state
                                        .user
                                        ?.photo ??
                                    ''),
                          ));
                        }
                        if (state.fetchStatus ==
                            SwitchAccountFetchStatus.loading) {
                          return const Center(
                            child: LoadingDialogFullScreen(),
                          );
                        }
                        return ListView.separated(
                          separatorBuilder: (context, index) => SizedBox(
                            width: 10.w,
                          ),
                          shrinkWrap: true,
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          scrollDirection: Axis.horizontal,
                          itemCount: state.slots.length,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.all(10.w),
                              margin: EdgeInsets.only(bottom: 20.w),
                              height: 140.h,
                              width: 120.w,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 3,
                                  color: state.slots[index].isSelected!
                                      ? Theme.of(context)
                                          .colorScheme
                                          .onSecondary
                                      : Theme.of(context)
                                          .colorScheme
                                          .background,
                                ),
                                color: Theme.of(context).colorScheme.background,
                                borderRadius: BorderRadius.circular(10.r),
                                boxShadow: [
                                  BoxShadow(
                                    color: Theme.of(context)
                                        .shadowColor
                                        .withOpacity(0.3),
                                    blurRadius: 15,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(10.r),
                                onTap: () {
                                  DialogBoxes.showTwoButtonAlertDialog(context,
                                      description:
                                          'Are you sure to switch the account?',
                                      title: 'Confirmation', onDismiss: () {
                                    context.pop();
                                  }, onConfirm: () {
                                    BlocProvider.of<SwitchAccountBloc>(context)
                                        .add(
                                      SwitchDifferentAccount(
                                        slot: state.slots[index],
                                      ),
                                    );
                                    context.pop();
                                  });
                                },
                                child: Column(
                                  children: [
                                    DpPlaceHolderWidget(
                                      radius: 40.r,
                                      imagePath: state.slots[index].photo,
                                    ),
                                    const Spacer(),
                                    Text(
                                        '${state.slots[index].firstName} ${state.slots[index].lastName}',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayMedium!
                                            .copyWith(
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                fontSize: 20.sp,
                                                fontWeight: FontWeight.w500)),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
