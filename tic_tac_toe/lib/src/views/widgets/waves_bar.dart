import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/theme/app_colors.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paintFill0 =
        Paint()
          ..color = AppColors.primary
          ..style = PaintingStyle.fill
          ..strokeWidth = size.width * 0.00
          ..strokeCap = StrokeCap.butt
          ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * -0.0040142, size.height * 0.0001811);
    path_0.lineTo(size.width * -0.0052184, size.height * 0.1308980);
    path_0.quadraticBezierTo(
      size.width * 0.0565053,
      size.height * 0.1981073,
      size.width * 0.5415821,
      size.height * 0.0955021,
    );
    path_0.cubicTo(
      size.width * 0.7319244,
      size.height * 0.0694710,
      size.width * 0.7872491,
      size.height * 0.1372830,
      size.width * 0.9015112,
      size.height * 0.1337888,
    );
    path_0.cubicTo(
      size.width * 0.9213223,
      size.height * 0.1337888,
      size.width * 0.9800472,
      size.height * 0.1345391,
      size.width * 1.0053601,
      size.height * 0.1223560,
    );
    path_0.quadraticBezierTo(
      size.width * 1.0053601,
      size.height * 0.0920931,
      size.width * 1.0046281,
      size.height * -0.0006182,
    );

    canvas.drawPath(path_0, paintFill0);

    // Layer 1

    Paint paintStroke0 =
        Paint()
          ..color = AppColors.primary
          ..style = PaintingStyle.stroke
          ..strokeWidth = 0
          ..strokeCap = StrokeCap.butt
          ..strokeJoin = StrokeJoin.round;

    canvas.drawPath(path_0, paintStroke0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class WavesBar extends StatelessWidget {
  const WavesBar({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        IgnorePointer(
          child: CustomPaint(
            size: Size(width, (width * 2).toDouble()),
            painter: RPSCustomPainter(),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: IgnorePointer(
            child: Transform.rotate(
              angle: 3.1416,
              child: CustomPaint(
                size: Size(width, (width * 1.5).toDouble()),
                painter: RPSCustomPainter(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
