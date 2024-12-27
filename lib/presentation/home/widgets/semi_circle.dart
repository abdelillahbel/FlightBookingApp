import 'dart:math';

import 'package:flightbookapp/core/config/themes/app_colors.dart';
import 'package:flutter/material.dart';

class SemiCircle extends StatelessWidget {
  final Color color;
  final bool isRight;
  final double radius;
  final Color? backgroundColor;

  const SemiCircle({
    super.key,
    required this.color,
    required this.isRight,
    required this.radius,
    this.backgroundColor = AppColors.scaffoldBackground
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 2 * radius,
      height: 2 * radius,
      child: ColoredBox(
        color: backgroundColor!,
        child: CustomPaint(
          painter: SemiCirclePainter(color: color, isRight: isRight),
        ),
      ),
    );
  }
}

class SemiCirclePainter extends CustomPainter {
  final Color color;
  final bool isRight;

  SemiCirclePainter({
    super.repaint,
    required this.color,
    required this.isRight,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final rect = Rect.fromLTWH(0, 0, size.width, size.height);

    final startAngle = isRight ? -pi / 2 : pi / 2;
    const sweepAngle = pi;

    canvas.drawArc(rect, startAngle, sweepAngle, true, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
