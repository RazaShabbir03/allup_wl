import 'package:allup_user_app/utils/app_assets.dart';
import 'package:allup_user_app/widgets/circle_cache_image_widget.dart';
import 'package:allup_user_app/widgets/svg_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DpPlaceHolderWidget extends StatelessWidget {
  const DpPlaceHolderWidget({super.key, this.imagePath, this.radius = 50});
  final String? imagePath;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
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
      child: CircleNetworkImage(
        imagePath: imagePath,
        radius: radius,
      ),
    );
  }
}
