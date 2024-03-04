import 'package:allup_user_app/l10n/l10n.dart';
import 'package:allup_user_app/utils/app_assets.dart';
import 'package:allup_user_app/widgets/svg_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AttendButton extends StatelessWidget {
  const AttendButton(
      {required this.onPressed, required this.isEnabled, super.key});
  final VoidCallback onPressed;
  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 26,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Theme.of(context).colorScheme.onSecondary,
          disabledBackgroundColor: Theme.of(context).disabledColor,
          elevation: 0,
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
                path: Assets.attendQRIcon,
                color: Theme.of(context).colorScheme.background),
            SizedBox(
              width: 5.w,
            ),
            Text(
              context.l10n.attend,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Theme.of(context).colorScheme.background,
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ),
    );
  }
}
