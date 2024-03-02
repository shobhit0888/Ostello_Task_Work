import 'package:flutter/material.dart';

class RightCurvedContainer extends CustomPaint {
  final Color lineColor;
  final double lineWidth;
  final double curveRadius; // Adjust radius for the curve

  const RightCurvedContainer({
    Key? key,
    required this.lineColor,
    required this.lineWidth,
    required this.curveRadius,
  }) : super(key: key);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = lineColor
      ..strokeWidth = lineWidth
      ..style = PaintingStyle.stroke;

    final width = size.width;
    final height = size.height;

    // Define the path for the right-curved line
    final path = Path();
    path.moveTo(width - curveRadius, height); // Start at top-right edge
    path.quadraticBezierTo(width + curveRadius, height, width, height - curveRadius); // Curve down to the right

    canvas.drawPath(path, paint); // Draw the path
  }

  @override
  bool shouldReclip(CustomPaint oldDelegate) => true;
}