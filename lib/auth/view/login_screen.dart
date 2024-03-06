import 'package:allup_user_app/auth/blocs/bloc/auth_bloc.dart';
import 'package:allup_user_app/auth/widgets/brand_search_bottom_sheet.dart';
import 'package:allup_user_app/utils/loading_dialog_full_screen.dart';
import 'package:allup_user_app/l10n/cubit/locale_cubit.dart';
import 'package:allup_user_app/l10n/l10n.dart';
import 'package:allup_user_app/routes/route_names.dart';
import 'package:allup_user_app/utils/app_assets.dart';
import 'package:allup_user_app/utils/app_text_style.dart';
import 'package:allup_user_app/utils/custom_toast_bottom.dart';
import 'package:allup_user_app/utils/decorations.dart';
import 'package:allup_user_app/widgets/country_flags_class.dart';
import 'package:allup_user_app/widgets/image_asset_widget.dart';
import 'package:allup_user_app/widgets/phone_number_random_generator.dart';
import 'package:allup_user_app/widgets/require_plus_formatter.dart';
import 'package:allup_user_app/widgets/svg_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:collection/collection.dart';

PhoneCountryData? _countryData;
PhoneCountryData? _bufferCountryData;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController? _phoneController;
  bool isEnabled = false;
  @override
  void initState() {
    _phoneController = TextEditingController(text: '');
    _phoneController!.addListener(() {
      if (_countryData != null && _phoneController!.text.isNotEmpty) {
        isEnabled = validateMobile(_countryData!, _phoneController!.text);
      } else {
        isEnabled = false;
      }
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _phoneController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.loginSubmitResponseStatus == AuthSubmitStatus.success) {
            Navigator.of(context).pop();
            context.push(
                '${Routes.otpRoute}/${_phoneController!.text.trim().replaceAll(' ', '')}');
          }
          if (state.loginSubmitResponseStatus == AuthSubmitStatus.loading) {
            DialogBox.showLoadingDialog(context);
          }
          if (state.loginSubmitResponseStatus == AuthSubmitStatus.softDelete) {
            Navigator.of(context).pop();
            ToastUtils.showErrorToast(context, context.l10n.softDeleteError);
          }
          if (state.loginSubmitResponseStatus == AuthSubmitStatus.signup) {
            Navigator.of(context).pop();
            context.push(
                '${Routes.registerRoute}/${_phoneController!.text.trim().replaceAll(' ', '')}');
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
                child: Form(
                  autovalidateMode: AutovalidateMode.disabled,
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 100.h,
                      ),
                      Text(
                        context.l10n.loginTitle,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        context.l10n.loginSubtitle1,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.w,
                          vertical: 20.h,
                        ),
                        decoration: Decorations.boxShadowDecorator(context),
                        margin: EdgeInsets.symmetric(
                          horizontal: 30.w,
                          vertical: 20.h,
                        ),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                showBrandModalSheet(
                                  context,
                                  onSelected: (state) {
                                    context
                                        .read<AuthBloc>()
                                        .add(SelectGymEvent(gymId: state!.id));
                                  },
                                  brands: state.gyms,
                                );
                              },
                              child: Row(
                                children: [
                                  const SvgWidget(
                                    path: Assets.loginTextfieldDumbellIcon,
                                    height: 25,
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  SizedBox(
                                    height: 25,
                                    child: VerticalDivider(
                                      color: Theme.of(context).dividerColor,
                                      width: 1,
                                      thickness: 1,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    (state.gyms.firstWhereOrNull(
                                                  (element) =>
                                                      element!.id ==
                                                      state.selectedGymId,
                                                ) ??
                                                state.gyms.firstOrNull)
                                            ?.name ??
                                        '',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          fontSize: 16.sp,
                                        ),
                                  ),
                                  const Spacer(),
                                  const SvgWidget(
                                    path: Assets.arrowDownIcon,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            Divider(
                              color: Theme.of(context).dividerColor,
                              thickness: 1,
                            ),
                            // ElevatedButton(
                            //     onPressed: () {
                            //       showBrandModalSheet(context,
                            //           onSelected: (state) {
                            //         context
                            //             .read<AuthBloc>()
                            //             .add(SelectGymEvent(gymId: state!.id));
                            //       }, brands: state.gyms);
                            //     },
                            //     child: Text(state.gyms
                            //         .firstWhere((element) =>
                            //             element!.id == state.selectedGymId)!
                            //         .name)),
                            TextFormField(
                              controller: _phoneController,
                              textDirection: TextDirection.ltr,
                              style: AppTextStyle.rubikStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              // validator: (value) {
                              //   if (value == null || value.isEmpty) {
                              //     return 'Please enter your phone number';
                              //   }
                              //   if (_countryData != null && value != null) {
                              //     return validateMobile(_countryData!, value);
                              //   }
                              // },
                              decoration: InputDecoration(
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.green,
                                  ),
                                ),
                                errorStyle: const TextStyle(
                                  height: 0,
                                  color: Colors.transparent,
                                  fontSize: 0,
                                ),
                                // errorMaxLines: 0,
                                hintTextDirection: TextDirection.ltr,
                                prefixIconConstraints: const BoxConstraints(
                                  minWidth: 0,
                                  minHeight: 0,
                                ),
                                prefixIcon: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.w),
                                  child: Text(
                                    CountryFlags.getFlagEmoji(
                                      (_countryData?.countryCode ??
                                              _bufferCountryData
                                                  ?.countryCode) ??
                                          'AE',
                                    ),
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                ),
                                hintText:
                                    '+${(_countryData?.phoneCode ?? _bufferCountryData?.phoneCode) ?? '971'} ${(PhoneNumber.getPlaceholder(_countryData?.countryCode) ?? PhoneNumber.getPlaceholder(_bufferCountryData?.countryCode)) ?? '50 123 4567'}',
                                hintStyle: AppTextStyle.rubikStyle(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onError
                                      .withOpacity(0.7),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Theme.of(context).dividerColor,
                                  ),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Theme.of(context).dividerColor,
                                  ),
                                ),
                              ),
                              keyboardType: TextInputType.phone,

                              inputFormatters: [
                                PhoneInputFormatter(
                                  onCountrySelected:
                                      (PhoneCountryData? countryData) {
                                    setState(() {
                                      _countryData = countryData;
                                      if (countryData != null) {
                                        _bufferCountryData = countryData;
                                      }
                                    });
                                  },
                                ),
                                RequiredPlusCodeFormatter(),
                              ],
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
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
                                onPressed: isEnabled
                                    ? () {
                                        context.read<AuthBloc>().add(
                                              LoginEvent(
                                                gymId: state.selectedGymId!,
                                                phoneNumber: _phoneController!
                                                    .text
                                                    .trim()
                                                    .replaceAll(' ', ''),
                                              ),
                                            );
                                      }
                                    : null,
                                child: Text(
                                  context.l10n.loginButton.toUpperCase(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w800,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
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
                    ],
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

bool validateMobile(PhoneCountryData value, String phone) {
  if (_countryData!.phoneMask != null) {
    if (_countryData!.phoneMask!.length <= phone.length) {
      return true;
    } else {
      return false;
    }
  } else {
    return false;
  }
}
