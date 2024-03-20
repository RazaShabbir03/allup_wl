import 'package:allup_user_app/auth/blocs/bloc/auth_bloc.dart';
import 'package:allup_user_app/l10n/l10n.dart';
import 'package:allup_user_app/terms_and_conditions/blocs/terms_and_conditions_bloc/terms_and_conditions_bloc.dart';
import 'package:allup_user_app/utils/app_assets.dart';
import 'package:allup_user_app/utils/decorations.dart';
import 'package:allup_user_app/utils/loading_dialog_full_screen.dart';
import 'package:allup_user_app/widgets/back_button_widget.dart';
import 'package:allup_user_app/widgets/image_asset_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class TnCScreen extends StatelessWidget {
  const TnCScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final staticAnchorKey = GlobalKey();
    return Scaffold(
        body: Stack(
      children: [
        ImageAssetsWidget(
            width: double.infinity,
            fit: BoxFit.fill,
            height: 300.h,
            image: Assets.loginScreenBgPicture),
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
              height: 25.h,
            ),
            Align(
              child: Text(
                context.l10n.termsConditions,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                  vertical: 20.h,
                ),
                decoration: Decorations.boxShadowDecorator(context),
                margin: EdgeInsets.symmetric(
                  horizontal: 30.w,
                  vertical: 20.h,
                ),
                child: BlocBuilder<TermsAndConditionsBloc,
                    TermsAndConditionsState>(
                  builder: (context, state) {
                    if (state is TermsAndConditionsInitial) {
                      BlocProvider.of<TermsAndConditionsBloc>(context).add(
                          GetTnCEvent(
                              gymId: BlocProvider.of<AuthBloc>(context)
                                  .state
                                  .selectedGymId!));
                    }
                    if (state is TermsAndConditionsLoading) {
                      return const Center(
                        child: const LoadingDialogFullScreen(),
                      );
                    }
                    if (state is TermsAndConditionsError) {
                      return Center(
                        child: Text(
                            'Error: ${context.l10n.somethingWentWrongErrorMessage}'),
                      );
                    }
                    if (state is TermsAndConditionsSuccess) {
                      return SingleChildScrollView(
                        child: Html(
                          anchorKey: staticAnchorKey,
                          data: state.tnc.gym.termsAndConditions,
                          shrinkWrap: true,
                          style: {
                            'body': Style(
                              fontSize: FontSize(10.sp),
                              textAlign: TextAlign.justify,
                            ),
                            'p': Style(
                              fontSize: FontSize(10.sp),
                              textAlign: TextAlign.justify,
                            ),
                          },
                          //Optional parameters:
                          // padding: EdgeInsets.all(8.0),
                          // backgroundColor: Colors.transparent,
                          // defaultTextStyle:
                          //     TextStyle(fontFamily: 'SFProDisplay'),
                          // linkStyle: const TextStyle(
                          //   color: Colors.redAccent,
                          // ),
                          // customTextAlign: (dom.Node node) {
                          //   if (node is dom.Element) {
                          //     switch (node.localName) {
                          //       case "p":
                          //         return TextAlign.justify;
                          //         break;
                          //       case "div":
                          //         return TextAlign.justify;
                          //         break;
                          //       default:
                          //         return TextAlign.justify;
                          //     }
                          //   } else {
                          //     return TextAlign.justify;
                          //   }
                          // },
                          // customTextStyle:
                          //     (dom.Node node, TextStyle baseStyle) {
                          //   if (node is dom.Element) {
                          //     switch (node.localName) {
                          //       case "p":
                          //         return baseStyle
                          //             .merge(TextStyle(fontSize: 15));
                          //         break;
                          //     }
                          //   }
                          //   return baseStyle;
                          // },
                        ),
                      );
                    } else {
                      return Container();
                    }
                  },
                ),
              ),
            )
          ],
        ))
      ],
    ));
  }
}
