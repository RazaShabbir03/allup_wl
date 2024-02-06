import 'package:allup_user_app/utils/app_assets.dart';
import 'package:allup_user_app/utils/app_text_style.dart';
import 'package:allup_user_app/widgets/svg_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ToastUtils {
  static void showSuccessToast(BuildContext context, String message) {
    hideCurrentSnackBar(context);
    final snackBar = createOverlayEntry(context, message, isError: false);
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static void showErrorToast(BuildContext context, String message) {
    hideCurrentSnackBar(context);
    final snackBar = createOverlayEntry(context, message, isError: true);
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static void hideCurrentSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
  }

  static SnackBar createOverlayEntry(BuildContext context, String message,
      {bool isError = false}) {
    return SnackBar(
      backgroundColor: Colors.transparent,
      behavior: SnackBarBehavior.floating,
      elevation: 0,
      // width: MediaQuery.of(context).size.width - 50,
      content: Container(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
          top: 10,
          bottom: 10,
        ),
        decoration: BoxDecoration(
            //gradient color
            gradient: LinearGradient(
              colors: isError
                  ? [
                      Theme.of(context).colorScheme.error,
                      Theme.of(context).colorScheme.onError,
                      Theme.of(context).colorScheme.primary,
                    ]
                  : [
                      Theme.of(context).colorScheme.primary,
                      Theme.of(context).colorScheme.secondary,
                      Theme.of(context).colorScheme.primary,
                    ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(12)),
        child: Align(
          alignment: Alignment.center,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: SvgWidget(
                  path: isError ? Assets.toastError : Assets.toastCheck,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 8,
                child: Text(
                  message,
                  textAlign: TextAlign.left,
                  softWrap: true,
                  style: AppTextStyle.roboto(
                    fontSize: 18.sp,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
