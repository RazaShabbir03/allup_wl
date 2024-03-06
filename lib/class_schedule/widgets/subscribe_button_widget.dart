import 'dart:ui';

import 'package:allup_user_app/l10n/l10n.dart';
import 'package:allup_user_app/utils/app_assets.dart';
import 'package:allup_user_app/widgets/svg_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubscribeButtonWidget extends StatelessWidget {
  const SubscribeButtonWidget(
      {super.key, this.onPressed, this.isSubscribed = false});
  final VoidCallback? onPressed;
  final bool isSubscribed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 26,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(
            horizontal: 10.w,
          ),
          backgroundColor: isSubscribed
              ? Theme.of(context).colorScheme.secondary
              : Theme.of(context).colorScheme.background,
          elevation: 0.0,
          side: BorderSide(
            color: isSubscribed
                ? Theme.of(context).colorScheme.secondary
                : Theme.of(context).colorScheme.primary,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        onPressed: isSubscribed ? null : onPressed,
        child: Row(
          children: [
            SvgWidget(
              height: 10,
              width: 10,
              path: isSubscribed ? Assets.subscribedIcon : Assets.subscribeIcon,
              color: isSubscribed
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.primary,
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              isSubscribed ? context.l10n.subscribed : context.l10n.subscribe,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: isSubscribed
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.primary,
                  fontSize: 11.sp,
                  fontVariations: [const FontVariation('wght', 700)],
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
