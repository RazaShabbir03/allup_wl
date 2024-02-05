import 'package:flutter/widgets.dart';

class ImageAssetsWidget extends StatelessWidget {
  const ImageAssetsWidget({
    required this.image,
    this.height,
    this.width,
    this.fit = BoxFit.cover,
    super.key,
  });
  final String image;
  final double? width;
  final double? height;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: width,
      height: height,
      fit: fit,
    );
  }
}
