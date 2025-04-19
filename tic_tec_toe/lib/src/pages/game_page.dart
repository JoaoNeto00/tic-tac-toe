import 'package:flutter/material.dart';
import 'package:tic_tec_toe/src/widgets/tic_tec_toe.dart';
import 'package:tic_tec_toe/src/widgets/wave_bar.dart';


class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Builder(
          builder: (context) {
            double width = MediaQuery.of(context).size.width;
            return Stack(
              children: [
                TicTecToe(),
                //wave normal
                CustomPaint(
                  size: Size(width, (width * 1.5).toDouble()),
                  painter: RPSCustomPainter(
                    fillColor: Color(0xFF3D329A),
                    strokeColor: Color(0xFF3D329A),
                  ),
                ),

                // wave invertida
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Transform.rotate(
                    angle: 3.1416,
                    child: CustomPaint(
                      size: Size(width, (width * 1.5).toDouble()),
                      painter: RPSCustomPainter(
                        fillColor: Color(0xFF3D329A),
                        strokeColor: Color(0xFF3D329A),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: Icon(
                      Icons.settings,
                      size: 30.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
