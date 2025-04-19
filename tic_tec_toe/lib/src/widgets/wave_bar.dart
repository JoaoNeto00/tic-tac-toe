import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  final Color fillColor;
  final Color strokeColor;

  RPSCustomPainter({
    this.fillColor = const Color(0xFF3D329A), 
    this.strokeColor = const Color(0xFF3D329A), 
  });

  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1
    Paint paintFill0 =
        Paint()
          ..color = fillColor
          ..style = PaintingStyle.fill
          ..strokeWidth = size.width * 0.00
          ..strokeCap = StrokeCap.butt
          ..strokeJoin = StrokeJoin.miter;
    Path path_0 = Path();

    path_0.moveTo(size.width * -0.0011570, size.height * -0.0007504);
    path_0.lineTo(size.width * 0.0010153, size.height * 0.1087132);
    path_0.quadraticBezierTo(
      size.width * 0.1639433,
      size.height * 0.1644641,
      size.width * 0.4778749,
      size.height * 0.1251428,
    );
    path_0.quadraticBezierTo(
      size.width * 0.7708146,
      size.height * 0.0731885,
      size.width * 0.9987249,
      size.height * 0.1128010,
    );
    path_0.lineTo(size.width * 1.0011806, 0);

    canvas.drawPath(path_0, paintFill0);

    // Layer 1 - stroke
    Paint paintStroke0 =
        Paint()
          ..color = strokeColor
          ..style = PaintingStyle.stroke
          ..strokeWidth = size.width * 0.00
          ..strokeCap = StrokeCap.butt
          ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paintStroke0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
