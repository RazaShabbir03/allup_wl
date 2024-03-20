import 'package:allup_user_app/l10n/l10n.dart';
import 'package:allup_user_app/routes/route_names.dart';
import 'package:allup_user_app/utils/app_assets.dart';
import 'package:allup_user_app/widgets/horizontal_dash_widget.dart';
import 'package:allup_user_app/widgets/svg_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProfileOptionsWidget extends StatelessWidget {
  const ProfileOptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.9.sw,
      padding: EdgeInsets.all(
        10.r,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor.withOpacity(0.4),
            blurRadius: 20,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        children: [
          ListTile(
            leading: const SvgWidget(path: Assets.termsAndConditionsIcon),
            title: Text(context.l10n.termsAndConditions,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: 16.sp,
                  color: Theme.of(context).colorScheme.primary,
                  fontVariations: const [FontVariation('wght', 450)],
                )),
            onTap: () {
              context.push(Routes.tncRoute);
            },
            trailing: const Icon(Icons.arrow_forward_ios, size: 15),
          ),
          HorizontalDashWidget(
            color: Theme.of(context).dividerColor,
            dashWidth: 5,
            height: 0.5,
          ),
          ListTile(
            leading: const SvgWidget(path: Assets.paymentIcon),
            title: Text(context.l10n.payment,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: 16.sp,
                  color: Theme.of(context).colorScheme.primary,
                  fontVariations: const [FontVariation('wght', 450)],
                )),
            onTap: () {
              // Go to payment Screen
            },
            trailing: const Icon(Icons.arrow_forward_ios, size: 15),
          ),
          HorizontalDashWidget(
            color: Theme.of(context).dividerColor,
            dashWidth: 5,
            height: 0.5,
          ),
          ListTile(
            titleAlignment: ListTileTitleAlignment.center,
            leading: const SvgWidget(path: Assets.appVersionIcon),
            title: Text(context.l10n.appVersion,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: 16.sp,
                  color: Theme.of(context).colorScheme.primary,
                  fontVariations: const [FontVariation('wght', 450)],
                )),
            onTap: () {
              // Logout
            },
            trailing: Text('v 1.0.0 (1)',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: 14.sp,
                  color: Theme.of(context).colorScheme.onSecondary,
                  fontVariations: const [FontVariation('wght', 400)],
                )),
          ),
        ],
      ),
    );
  }
}
