import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//Container for the price tag

class PriceTag extends StatelessWidget {
  const PriceTag({required this.price, this.color = Colors.green, super.key});
  final String price;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: PriceTagPaint(color: color),
      child: Container(
        padding: EdgeInsets.only(
          left: 25.r,
          right: 5.r,
          top: 3.r,
          bottom: 3.r,
        ),
        child: Text(price,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Theme.of(context).colorScheme.surface,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                )),
      ),
    );
  }
}

class PriceTagPaint extends CustomPainter {
  final Color color;
  const PriceTagPaint({this.color = Colors.green});
  @override
  void paint(
    Canvas canvas,
    Size size,
  ) {
    final paint = Paint()
      ..color = color
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill;

    final path = Path();

    final width = size.width;
    final height = size.height;

    final cornerRadius = height * 0.1; // Adjust the corner radius as needed

    path
      ..moveTo(width * 0.20 + cornerRadius, height * 0.5)
      ..lineTo(width * 0.13, cornerRadius)
      ..quadraticBezierTo(width * 0.13, 0, width * 0.13 + cornerRadius, 0)
      ..lineTo(width - cornerRadius, 0)
      ..quadraticBezierTo(width, 0, width, cornerRadius)
      ..lineTo(width, height - cornerRadius)
      ..quadraticBezierTo(width, height, width - cornerRadius, height)
      ..lineTo(width * 0.13 + cornerRadius, height)
      ..quadraticBezierTo(
          width * 0.13, height, width * 0.13, height - cornerRadius)
      ..lineTo(width * 0.20 + cornerRadius, height * 0.5)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
