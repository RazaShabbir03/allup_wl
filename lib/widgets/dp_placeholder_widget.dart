import 'package:allup_user_app/utils/app_assets.dart';
import 'package:allup_user_app/widgets/svg_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DpPlaceHolderWidget extends StatelessWidget {
  const DpPlaceHolderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: SvgWidget(
        height: 60.h,
        width: 60.h,
        path: Assets.dpPlaceholder,
      ),
    );
  }
}
