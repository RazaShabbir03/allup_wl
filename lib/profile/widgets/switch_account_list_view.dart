import 'package:allup_user_app/auth/blocs/bloc/auth_bloc.dart';
import 'package:allup_user_app/dashboard/blocs/bloc/dashboard_bloc.dart';
import 'package:allup_user_app/profile/blocs/switch_acccount_bloc/switch_account_bloc.dart';
import 'package:allup_user_app/utils/dialogs.dart';
import 'package:allup_user_app/utils/loading_dialog_full_screen.dart';
import 'package:allup_user_app/widgets/dp_placeholder_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SwitchAccountListWidget extends StatelessWidget {
  const SwitchAccountListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190.h,
      child: BlocBuilder<SwitchAccountBloc, SwitchAccountState>(
        builder: (context, state) {
          if (state is SwitchAccountInitial) {
            BlocProvider.of<SwitchAccountBloc>(context)
                .add(GetLinkedAccountsEvent(
              gymId: BlocProvider.of<AuthBloc>(context).state.selectedGymId!,
              childAccountId:
                  BlocProvider.of<DashboardBloc>(context).state.childAccountId,
              parentSlot: Slot(
                  isParent: true,
                  firstName: BlocProvider.of<DashboardBloc>(context)
                          .state
                          .user
                          ?.firstName ??
                      '',
                  lastName: BlocProvider.of<DashboardBloc>(context)
                          .state
                          .user
                          ?.lastName ??
                      '',
                  id: BlocProvider.of<DashboardBloc>(context).state.user?.id ??
                      '',
                  photo: BlocProvider.of<DashboardBloc>(context)
                          .state
                          .user
                          ?.photo ??
                      ''),
            ));
          }
          if (state.fetchStatus == SwitchAccountFetchStatus.loading) {
            return const Center(
              child: LoadingDialogFullScreen(),
            );
          }
          return Center(
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(
                width: 10.w,
              ),
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              scrollDirection: Axis.horizontal,
              itemCount: state.slots.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 160.h,
                  width: 120.w,
                  margin: EdgeInsets.only(bottom: 20.w),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: state.slots[index].isSelected
                          ? Theme.of(context).colorScheme.onSecondary
                          : Theme.of(context).colorScheme.background,
                    ),
                    color: Theme.of(context).colorScheme.background,
                    borderRadius: BorderRadius.circular(10.r),
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).shadowColor.withOpacity(0.3),
                        blurRadius: 15,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10.r),
                    onTap: () {
                      DialogBoxes.showTwoButtonAlertDialog(context,
                          description: 'Are you sure to switch the account?',
                          title: 'Confirmation', onDismiss: () {
                        context.pop();
                      }, onConfirm: () {
                        BlocProvider.of<SwitchAccountBloc>(context).add(
                          SwitchDifferentAccount(
                            slot: state.slots[index],
                          ),
                        );
                        context.pop();
                      });
                    },
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10.w),
                          child: Center(
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
                                        .titleSmall!
                                        .copyWith(
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontSize: 14.sp,
                                            fontVariations: const [
                                              FontVariation('wght', 500)
                                            ],
                                            fontWeight: FontWeight.w500)),
                                SizedBox(
                                  height: 10.h,
                                ),
                                if (state.selectedSlot == null)
                                  const SizedBox()
                                else
                                  Text(
                                    state.slots[index].isParent
                                        ? '(Parent)'
                                        : '(Child)',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall!
                                        .copyWith(
                                            color: state.slots[index].isParent
                                                ? Colors.green
                                                : Theme.of(context)
                                                    .colorScheme
                                                    .onSecondary,
                                            fontSize: 12.sp,
                                            fontVariations: const [
                                              FontVariation('wght', 500)
                                            ],
                                            fontWeight: FontWeight.w500),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        if (state.slots[index].isSelected)
                          Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                              padding: EdgeInsets.all(2.w),
                              decoration: BoxDecoration(
                                color:
                                    Theme.of(context).colorScheme.onSecondary,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(7.r),
                                ),
                              ),
                              child: Icon(Icons.check,
                                  size: 25.r,
                                  color:
                                      Theme.of(context).colorScheme.background),
                            ),
                          )
                        else
                          const SizedBox(),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
