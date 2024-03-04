import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DialogBoxes {
  static void showLoadingDialog(BuildContext context,
      {required String title,
      required VoidCallback onDismiss,
      required VoidCallback onConfirm,
      String? description,
      String? confirmText,
      String? dismissText,
      bool barrierDismissible = false}) {
    showDialog<void>(
      barrierDismissible: barrierDismissible,
      context: context,
      builder: (BuildContext context) {
        return MyDialog(
          title: title,
          description: description,
          onDismiss: onDismiss,
          onConfirm: onConfirm,
          confirmText: confirmText,
          dismissText: dismissText,
        );
      },
    );
  }
}

class MyDialog extends StatelessWidget {
  const MyDialog({
    required this.title,
    required this.onDismiss,
    required this.onConfirm,
    this.description,
    this.confirmText = 'Yes',
    this.dismissText = 'Dismiss',
    super.key,
  });

  final String title;
  final String? description;
  final String? confirmText;
  final String? dismissText;
  final VoidCallback onDismiss;
  final VoidCallback onConfirm;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AlertDialog(
        // insetPadding: EdgeInsets.zero,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        title: Text(title,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 22.sp,
                )),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(description ?? '',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.w300,
                      color: Theme.of(context).shadowColor,
                    )),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).colorScheme.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: onConfirm,
                child: Text(
                  confirmText ?? 'Yes',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.background,
                      ),
                ),
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Theme.of(context).disabledColor.withOpacity(0.3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: onDismiss,
                child: Text(
                  dismissText ?? 'Dismiss',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.background,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
