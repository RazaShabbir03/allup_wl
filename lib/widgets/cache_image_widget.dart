import 'package:allup_user_app/utils/app_assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';

class CacheNetworkImage extends StatelessWidget {
  const CacheNetworkImage(
      {required this.imagePath,
      super.key,
      this.height = 50,
      this.width = 50,
      this.radius = 0.0,
      this.fit = BoxFit.cover});
  final String? imagePath;
  final double height;
  final double width;
  final BoxFit fit;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      color: Theme.of(context).colorScheme.secondary,
      errorWidget: (context, url, error) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Image.asset(
          fit: fit,
          Assets.noImagePlaceHolder,
          width: width,
          height: height,
        ),
      ),
      imageUrl: imagePath ?? '',
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        ),
        height: height,
        width: width,
      ),
      placeholder: (context, url) => Shimmer.fromColors(
        baseColor: Theme.of(context).colorScheme.onSecondary,
        highlightColor: Theme.of(context).colorScheme.secondary,
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(radius),
          ),
          height: height,
          width: width,
        ),
      ),
    );
  }
}
