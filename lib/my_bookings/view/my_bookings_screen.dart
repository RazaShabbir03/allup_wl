import 'package:allup_user_app/l10n/l10n.dart';
import 'package:allup_user_app/my_bookings/blocs/session_contracts/session_contracts_bloc.dart';
import 'package:allup_user_app/my_bookings/widgets/my_classes_widget.dart';
import 'package:allup_user_app/my_bookings/widgets/session_contract_widget.dart';
import 'package:allup_user_app/utils/app_assets.dart';
import 'package:allup_user_app/utils/custom_toast_bottom.dart';
import 'package:allup_user_app/utils/loading_dialog_full_screen.dart';
import 'package:allup_user_app/widgets/back_button_widget.dart';
import 'package:allup_user_app/widgets/image_asset_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyBookingsScreen extends StatefulWidget {
  const MyBookingsScreen({super.key});

  @override
  State<MyBookingsScreen> createState() => _MyBookingsScreenState();
}

class _MyBookingsScreenState extends State<MyBookingsScreen>
    with TickerProviderStateMixin {
  TabController? _tabController;
  ValueNotifier<int> _valueNotifer = ValueNotifier(0);

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    _tabController!.addListener(() {
      _valueNotifer.value = _tabController!.index;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
        body: Stack(
          children: [
            ImageAssetsWidget(
              image: Assets.loginScreenBgPicture,
              height: 0.5.sh,
              fit: BoxFit.fill,
              width: double.infinity,
            ),
            SafeArea(
              child: BlocListener<SessionContractsBloc, SessionContractsState>(
                listener: (context, state) {
                  if (state.submitStatus == SubmitStatus.success) {
                    DialogBox.showLoadingDialog(context);
                  }
                  if (state.submitStatus == SubmitStatus.success) {
                    Navigator.pop(context);
                    ToastUtils.showSuccessToast(
                        context, 'Session Contract Cancelled Successfully');
                  }
                  if (state.submitStatus == SubmitStatus.failure) {
                    Navigator.pop(context);
                    ToastUtils.showErrorToast(
                        context, context.l10n.somethingWentWrongErrorMessage);
                  }
                },
                child: Column(
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
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'My Bookings',
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
                                    fontSize: 21.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    ValueListenableBuilder(
                        valueListenable: _valueNotifer,
                        builder: (s, dynamic value, child) {
                          return Container(
                            width: 0.7.sw,
                            height: 0.04.sh,
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: TabBar(
                              indicatorSize: TabBarIndicatorSize.tab,
                              controller: _tabController,
                              labelStyle: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontSize: 11.sp,
                                  ),
                              unselectedLabelStyle: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontSize: 11.sp,
                                  ),
                              dividerColor: Colors.transparent,
                              indicator: BoxDecoration(
                                  borderRadius: value == 0
                                      ? BorderRadius.only(
                                          topLeft: Radius.circular(10.r),
                                          bottomLeft: Radius.circular(10.r))
                                      : value == _tabController!.length - 1
                                          ? BorderRadius.only(
                                              topRight: Radius.circular(10.r),
                                              bottomRight:
                                                  Radius.circular(10.r))
                                          : BorderRadius.zero,
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                              tabs: const [
                                Tab(
                                  text: 'Session Contracts',
                                ),
                                Tab(
                                  text: 'Classes',
                                ),
                              ],
                            ),
                          );
                        }),
                    SizedBox(
                      height: 20.h,
                    ),
                    Expanded(
                      child: TabBarView(
                        physics: const NeverScrollableScrollPhysics(),
                        controller: _tabController,
                        children: const [SessionContracts(), MyClassesWidget()],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
