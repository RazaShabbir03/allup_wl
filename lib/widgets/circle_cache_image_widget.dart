import 'package:allup_user_app/utils/app_assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';

class CircleNetworkImage extends StatelessWidget {
  const CircleNetworkImage(
      {required this.imagePath, super.key, this.radius = 50});
  final String? imagePath;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      color: Theme.of(context).colorScheme.secondary,
      errorListener: (exception) {
        print('Exception: $exception');
      },
      errorWidget: (context, url, error) => CircleAvatar(
        radius: radius,
        backgroundColor: Theme.of(context).colorScheme.secondary,
        child: SvgPicture.asset(
          Assets.dpPlaceholder,
          width: double.infinity,
        ),
      ),
      imageUrl: imagePath ?? '',
      imageBuilder: (context, imageProvider) => CircleAvatar(
        backgroundImage: imageProvider,
        radius: radius,
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      placeholder: (context, url) => Shimmer.fromColors(
        baseColor: Theme.of(context).colorScheme.onSecondary,
        highlightColor: Theme.of(context).colorScheme.secondary,
        child: CircleAvatar(
          radius: radius,
        ),
      ),
    );
  }
}
