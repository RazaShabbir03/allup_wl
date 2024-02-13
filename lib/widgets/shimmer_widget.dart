import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  final BoxShape shape;
  final double height;
  final double width;
  const ShimmerWidget(
      {Key? key,
      this.shape = BoxShape.rectangle,
      required this.height,
      required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Theme.of(context).colorScheme.background,
      highlightColor: Theme.of(context).colorScheme.secondary,
      child: shape == BoxShape.circle
          ? Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                shape: shape,
                color: Colors.grey,
              ),
            )
          : Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
    );
  }
}
