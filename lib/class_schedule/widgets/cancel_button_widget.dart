import 'package:allup_user_app/l10n/l10n.dart';
import 'package:allup_user_app/utils/app_assets.dart';
import 'package:allup_user_app/widgets/svg_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({required this.onPressed, super.key});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 26,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Theme.of(context).colorScheme.background,
          disabledBackgroundColor: Theme.of(context).disabledColor,
          elevation: 0,
          side: BorderSide(
            color: Theme.of(context).colorScheme.onSecondary,
            width: 1,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 10.w,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          children: [
            SvgWidget(
                height: 10,
                width: 10,
                path: Assets.cancelButtonIcon,
                color: Theme.of(context).colorScheme.onSecondary),
            SizedBox(
              width: 5.w,
            ),
            Text(
              context.l10n.cancel,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Theme.of(context).colorScheme.onSecondary,
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ),
    );
  }
}
