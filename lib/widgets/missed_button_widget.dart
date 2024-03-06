import 'dart:ui';

import 'package:allup_user_app/l10n/l10n.dart';
import 'package:allup_user_app/utils/app_assets.dart';
import 'package:allup_user_app/widgets/svg_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MissedButton extends StatelessWidget {
  const MissedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 26,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          disabledForegroundColor: Theme.of(context).colorScheme.secondary,
          backgroundColor: Theme.of(context).colorScheme.secondary,
          disabledBackgroundColor: Theme.of(context).colorScheme.secondary,
          elevation: 0,
          side: BorderSide(
            color: Theme.of(context).colorScheme.secondary,
            width: 1,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 10.w,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        onPressed: null,
        child: Row(
          children: [
            SvgWidget(
                height: 10,
                width: 10,
                path: Assets.cancelButtonIcon,
                color: Theme.of(context).colorScheme.primary),
            SizedBox(
              width: 5.w,
            ),
            Text(
              'Missed',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
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
