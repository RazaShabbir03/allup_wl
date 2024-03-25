import 'dart:ui';

import 'package:allup_user_app/l10n/l10n.dart';
import 'package:allup_user_app/utils/app_assets.dart';
import 'package:allup_user_app/widgets/svg_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CancelButton extends StatelessWidget {
  const CancelButton(
      {required this.onPressed, this.isEnabled = true, super.key});
  final VoidCallback onPressed;
  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 26,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          disabledForegroundColor:
              Theme.of(context).colorScheme.onError.withOpacity(0.2),
          backgroundColor: isEnabled
              ? Theme.of(context).colorScheme.background
              : Theme.of(context).colorScheme.onError.withOpacity(0.2),
          disabledBackgroundColor:
              Theme.of(context).colorScheme.onError.withOpacity(0.2),
          elevation: 0,
          side: BorderSide(
            color: isEnabled
                ? Theme.of(context).colorScheme.onSecondary
                : Theme.of(context).colorScheme.onError.withOpacity(0.2),
            width: 1,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 10.w,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        onPressed: isEnabled ? onPressed : null,
        child: Row(
          children: [
            SvgWidget(
                height: 10,
                width: 10,
                path: Assets.cancelButtonIcon,
                color: isEnabled
                    ? Theme.of(context).colorScheme.onSecondary
                    : Theme.of(context).colorScheme.onSecondary),
            SizedBox(
              width: 5.w,
            ),
            Text(
              isEnabled ? context.l10n.cancel : context.l10n.cancelled,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: isEnabled
                      ? Theme.of(context).colorScheme.onSecondary
                      : Theme.of(context).colorScheme.onSecondary,
                  fontSize: 11.sp,
                  fontVariations: [const FontVariation('wght', 700)],
                  fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ),
    );
  }
}
