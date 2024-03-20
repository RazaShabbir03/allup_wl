import 'package:allup_user_app/utils/app_assets.dart';
import 'package:allup_user_app/widgets/svg_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FadedGradientByCategoryWidget extends StatelessWidget {
  const FadedGradientByCategoryWidget({
    required this.onTap,
    required this.noOfClasses,
    this.imageUrl,
    this.text,
    super.key,
  });
  final String? imageUrl;
  final String? text;
  final VoidCallback onTap;
  final int noOfClasses;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: onTap,
        radius: 20,
        child: Stack(
          children: [
            CachedNetworkImage(
              imageUrl: imageUrl ?? '',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
              placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.4)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text(
                          text ?? '',
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontVariations: const [
                                      FontVariation(
                                        'wght',
                                        700,
                                      )
                                    ],
                                    fontSize: 20.sp,
                                  ),
                        ),
                        SvgWidget(path: Assets.classesIcon),
                        Text(
                          '$noOfClasses classes',
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontVariations: const [
                                      FontVariation(
                                        'wght',
                                        300,
                                      )
                                    ],
                                    fontSize: 13.sp,
                                  ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
