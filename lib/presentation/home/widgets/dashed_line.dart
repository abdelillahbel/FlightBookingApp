import 'package:flutter/material.dart';

class DashedLine extends StatelessWidget {
  final double dashWidth;
  final double dashHeight;
  final double dashSpacing;
  final Color color;
  final double? canvasWidth;
  final double? canvasHeight;

  const DashedLine({
    super.key,
    required this.dashWidth,
    required this.dashHeight,
    required this.dashSpacing,
    required this.color,
    this.canvasHeight,
    this.canvasWidth,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: canvasWidth,
      height: canvasHeight,
      child: CustomPaint(
        painter: DashedLinePainter(
          dashWidth: dashWidth,
          dashHeight: dashHeight,
          dashSpacing: dashSpacing,
          color: color,
        ),
      ),
    );
  }
}

class DashedLinePainter extends CustomPainter {
  final double dashWidth;
  final double dashHeight;
  final double dashSpacing;
  final Color color;

  DashedLinePainter({
    super.repaint,
    required this.dashWidth,
    required this.dashHeight,
    required this.dashSpacing,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..strokeCap = StrokeCap.round
      ..strokeWidth = dashHeight;

    double startX = 0;
    double startY = size.height / 2;
    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, startY),
        Offset(startX + dashWidth, startY),
        paint,
      );
      startX += dashWidth + dashSpacing;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
