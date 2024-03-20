import 'package:allup_user_app/auth/blocs/bloc/auth_bloc.dart';
import 'package:allup_user_app/l10n/l10n.dart';
import 'package:allup_user_app/routes/route_names.dart';
import 'package:allup_user_app/utils/app_assets.dart';
import 'package:allup_user_app/utils/custom_toast_bottom.dart';
import 'package:allup_user_app/utils/decorations.dart';
import 'package:allup_user_app/utils/loading_dialog_full_screen.dart';
import 'package:allup_user_app/widgets/back_button_widget.dart';
import 'package:allup_user_app/widgets/image_asset_widget.dart';
import 'package:allup_user_app/widgets/svg_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({required this.phone, super.key});
  final String phone;

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  ValueNotifier<bool>? isEnabled;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController? firstNameController;
  TextEditingController? lastNameController;
  TextEditingController? emailController;
  @override
  void initState() {
    isEnabled = ValueNotifier(false);
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    emailController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    isEnabled?.dispose();
    firstNameController?.dispose();
    lastNameController?.dispose();
    emailController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state.registerSubmitResponseStatus ==
                AuthSubmitStatus.loading) {
              DialogBox.showLoadingDialog(context);
            }
            if (state.registerSubmitResponseStatus ==
                AuthSubmitStatus.success) {
              DialogBox.hideLoadingDialog(context);
              context.push(
                '${Routes.otpRoute}/${widget.phone}/${state.refId}',
              );
            }
            if (state.registerSubmitResponseStatus == AuthSubmitStatus.error) {
              DialogBox.hideLoadingDialog(context);
              ToastUtils.showErrorToast(
                context,
                state.registerErrorMessage ??
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
                  color: Theme.of(context).colorScheme.background,
                ),
                ImageAssetsWidget(
                  image: Assets.loginScreenBgPicture,
                  height: size.height * 0.5,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                SafeArea(
                    child: Center(
                  child: Form(
                    key: _formKey,
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
                          height: 40.h,
                        ),
                        Text(
                          context.l10n.registerTitle,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          context.l10n.registerSubtitle,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        SizedBox(
                          height: 10.h,
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    width: 20,
                                    child: SvgWidget(
                                      path: Assets.registerTextfieldPrefixIcon,
                                      height: 15,
                                      width: 15,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                    child: VerticalDivider(
                                      color: Theme.of(context).dividerColor,
                                      thickness: 1,
                                    ),
                                  ),
                                  Expanded(
                                    child: TextFormField(
                                      onChanged: (val) {
                                        if (val.isNotEmpty &&
                                            lastNameController!
                                                .text.isNotEmpty &&
                                            validateEmail(
                                                emailController!.text)) {
                                          isEnabled!.value = true;
                                        } else {
                                          isEnabled!.value = false;
                                        }
                                      },
                                      controller: firstNameController,
                                      cursorColor: Theme.of(context).hintColor,
                                      textAlign: TextAlign.start,
                                      textAlignVertical: TextAlignVertical.top,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall!
                                          .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            fontSize: 14.sp,
                                          ),
                                      decoration: InputDecoration(
                                        hintText: 'Enter your first Name',
                                        hintStyle: Theme.of(context)
                                            .textTheme
                                            .titleSmall!
                                            .copyWith(
                                              color:
                                                  Theme.of(context).hintColor,
                                              fontSize: 12.sp,
                                            ),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                indent: 0,
                                endIndent: 0,
                                height: 1,
                                color: Theme.of(context).dividerColor,
                                thickness: 1,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    width: 20,
                                    child: SvgWidget(
                                      path: Assets.registerTextfieldPrefixIcon,
                                      height: 15,
                                      width: 15,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                    child: VerticalDivider(
                                      color: Theme.of(context).dividerColor,
                                      thickness: 1,
                                    ),
                                  ),
                                  Expanded(
                                    child: TextFormField(
                                      onChanged: (val) {
                                        if (val.isNotEmpty &&
                                            firstNameController!
                                                .text.isNotEmpty &&
                                            validateEmail(
                                                emailController!.text)) {
                                          isEnabled!.value = true;
                                        } else {
                                          isEnabled!.value = false;
                                        }
                                      },
                                      controller: lastNameController,
                                      cursorColor: Theme.of(context).hintColor,
                                      textAlign: TextAlign.start,
                                      textAlignVertical: TextAlignVertical.top,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall!
                                          .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            fontSize: 14.sp,
                                          ),
                                      decoration: InputDecoration(
                                        hintText: 'Enter your last Name',
                                        hintStyle: Theme.of(context)
                                            .textTheme
                                            .titleSmall!
                                            .copyWith(
                                              color:
                                                  Theme.of(context).hintColor,
                                              fontSize: 12.sp,
                                            ),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                indent: 0,
                                endIndent: 0,
                                height: 1,
                                color: Theme.of(context).dividerColor,
                                thickness: 1,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    width: 20,
                                    child: SvgWidget(
                                      path: Assets.emailPrefixIcon,
                                      height: 15,
                                      width: 15,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                    child: VerticalDivider(
                                      color: Theme.of(context).dividerColor,
                                      thickness: 1,
                                    ),
                                  ),
                                  Expanded(
                                    child: TextFormField(
                                      controller: emailController,
                                      cursorColor: Theme.of(context).hintColor,
                                      textAlign: TextAlign.start,
                                      textAlignVertical: TextAlignVertical.top,
                                      onChanged: (val) {
                                        if (validateEmail(
                                                emailController!.text) &&
                                            firstNameController!
                                                .text.isNotEmpty &&
                                            lastNameController!
                                                .text.isNotEmpty) {
                                          isEnabled!.value = true;
                                        } else {
                                          isEnabled!.value = false;
                                        }
                                      },
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall!
                                          .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            fontSize: 14.sp,
                                          ),
                                      decoration: InputDecoration(
                                        hintText: 'Email Address (Optional)',
                                        hintStyle: Theme.of(context)
                                            .textTheme
                                            .titleSmall!
                                            .copyWith(
                                              color:
                                                  Theme.of(context).hintColor,
                                              fontSize: 12.sp,
                                            ),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                indent: 0,
                                endIndent: 0,
                                height: 1,
                                color: Theme.of(context).dividerColor,
                                thickness: 1,
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              ValueListenableBuilder(
                                valueListenable: isEnabled!,
                                builder: (context, value, widgetChild) {
                                  return SizedBox(
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 20.w,
                                          vertical: 10.h,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                        ),
                                      ),
                                      onPressed: value
                                          ? () {
                                              context.read<AuthBloc>().add(
                                                    RegisterEvent(
                                                      gymId:
                                                          state.selectedGymId!,
                                                      phoneNumber: widget.phone,
                                                      firstName:
                                                          firstNameController!
                                                              .text,
                                                      lastName:
                                                          lastNameController!
                                                              .text,
                                                      email:
                                                          emailController!.text,
                                                    ),
                                                  );
                                            }
                                          : null,
                                      child: Text(
                                        'NEXT',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium!
                                            .copyWith(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w800,
                                            ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ))
              ],
            );
          },
        ),
      ),
    );
  }
}

bool validateEmail(String email) {
  if (email.isEmpty) {
    return true;
  }
  // Regular expression for basic email validation
  final emailRegExp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  // Check if the provided email matches the regular expression
  return emailRegExp.hasMatch(email);
}
