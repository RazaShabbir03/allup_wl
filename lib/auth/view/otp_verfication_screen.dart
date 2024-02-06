import 'package:allup_user_app/auth/blocs/bloc/auth_bloc.dart';
import 'package:allup_user_app/auth/widgets/loading_dialog_full_screen.dart';
import 'package:allup_user_app/l10n/l10n.dart';
import 'package:allup_user_app/routes/route_names.dart';
import 'package:allup_user_app/utils/app_assets.dart';
import 'package:allup_user_app/utils/custom_toast_bottom.dart';
import 'package:allup_user_app/utils/decorations.dart';
import 'package:allup_user_app/utils/helper_functions.dart';
import 'package:allup_user_app/widgets/back_button_widget.dart';
import 'package:allup_user_app/widgets/image_asset_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

class OTPVerificationScreen extends StatefulWidget {
  const OTPVerificationScreen({super.key, required this.phone});
  final String phone;

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
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.otpStatus == OTPStatus.loading) {
            DialogBox.showLoadingDialog(context);
          }
          if (state.otpStatus == OTPStatus.error) {
            Navigator.pop(context);
            ToastUtils.showErrorToast(
                context, state.otpErrorMessage ?? 'Something went wrong');
          }
          if (state.otpStatus == OTPStatus.success) {
            Navigator.pop(context);
            context.go(Routes.dashboardRoute);
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
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: BackButtonWidget(
                          onPressed: () {
                            context.pop();
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 80.h,
                    ),
                    Text(
                      context.l10n.otpTitle,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      widget.phone,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.subtitle1,
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
                                                  phoneNumber: widget.phone,
                                                  otp: otpController!.text,
                                                ),
                                              );
                                        }
                                      : null,
                                  style: ElevatedButton.styleFrom(
                                    primary:
                                        Theme.of(context).colorScheme.primary,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 20.w,
                                      vertical: 10.h,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.r),
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
    );
  }
}
