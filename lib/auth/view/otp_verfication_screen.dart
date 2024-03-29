import 'package:allup_user_app/auth/blocs/bloc/auth_bloc.dart';
import 'package:allup_user_app/utils/loading_dialog_full_screen.dart';
import 'package:allup_user_app/dashboard/blocs/bloc/dashboard_bloc.dart';
import 'package:allup_user_app/l10n/l10n.dart';
import 'package:allup_user_app/routes/route_names.dart';
import 'package:allup_user_app/utils/app_assets.dart';
import 'package:allup_user_app/utils/custom_toast_bottom.dart';
import 'package:allup_user_app/utils/decorations.dart';
import 'package:allup_user_app/widgets/back_button_widget.dart';
import 'package:allup_user_app/widgets/image_asset_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

class OTPVerificationScreen extends StatefulWidget {
  const OTPVerificationScreen({required this.phone, this.refId, super.key});
  final String phone;
  final String? refId;

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  TextEditingController? otpController;
  ValueNotifier<bool>? isButtonEnabled;
  @override
  void initState() {
    otpController = TextEditingController();
    isButtonEnabled = ValueNotifier(false);
    super.initState();
  }

  @override
  void dispose() {
    otpController?.dispose();
    isButtonEnabled?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: BlocListener<DashboardBloc, DashboardState>(
        listener: (context, state) {
          if (state.dashboardStatus == DashboardStatus.success) {
            Navigator.pop(context);
            context.go(Routes.dashboardRoute);
          }
          if (state.dashboardStatus == DashboardStatus.error) {
            Navigator.pop(context);
            context.go(Routes.loginRoute);
          }
        },
        child: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state.otpStatus == OTPStatus.loading) {
              DialogBox.showLoadingDialog(context);
            }
            if (state.otpStatus == OTPStatus.error) {
              Navigator.pop(context);
              ToastUtils.showErrorToast(context, state.otpErrorMessage);
            }
            if (state.otpStatus == OTPStatus.success) {
              BlocProvider.of<DashboardBloc>(context).add(
                GetDashboardEvents(gymId: state.selectedGymId!),
              );
            }
          },
          builder: (context, state) {
            return Stack(
              children: [
                Container(
                  height: size.height,
                  width: double.infinity,
                  color: Theme.of(context).colorScheme.background,
                ),
                ImageAssetsWidget(
                  image: Assets.loginScreenBgPicture,
                  height: size.height * 0.5,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                SafeArea(
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
                      SizedBox(
                        height: 80.h,
                      ),
                      Align(
                        child: Text(
                          context.l10n.otpTitle,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Align(
                        child: Text(
                          widget.phone,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 30.w,
                          vertical: 20.h,
                        ),
                        margin: EdgeInsets.symmetric(
                          horizontal: 30.w,
                          vertical: 20.h,
                        ),
                        decoration: Decorations.boxShadowDecorator(context),
                        child: Column(
                          children: [
                            Text(context.l10n.otp_field_title),
                            SizedBox(
                              height: 20.h,
                            ),
                            Pinput(
                              onChanged: (value) {
                                if (value.length == 6) {
                                  isButtonEnabled!.value = true;
                                  context.read<AuthBloc>().add(
                                        VerifyOTPEvent(
                                          refId: widget.refId,
                                          phoneNumber: widget.phone,
                                          otp: value,
                                        ),
                                      );
                                } else {
                                  isButtonEnabled!.value = false;
                                }
                              },
                              controller: otpController,
                              focusedPinTheme:
                                  Decorations.focusedPinTheme(context),
                              defaultPinTheme: Decorations.pinTheme(context),
                              length: 6,
                              onCompleted: print,
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: ValueListenableBuilder(
                                valueListenable: isButtonEnabled!,
                                builder: (
                                  BuildContext context,
                                  bool value,
                                  Widget? child,
                                ) {
                                  return ElevatedButton(
                                    onPressed: value
                                        ? () {
                                            context.read<AuthBloc>().add(
                                                  VerifyOTPEvent(
                                                    refId: widget.refId,
                                                    phoneNumber: widget.phone,
                                                    otp: otpController!.text,
                                                  ),
                                                );
                                          }
                                        : null,
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Theme.of(context).colorScheme.primary,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 20.w,
                                        vertical: 10.h,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                      ),
                                    ),
                                    child: Text(
                                      context.l10n.otpButton.toUpperCase(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w800,
                                          ),
                                    ),
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
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
