import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/views/widgets/app_bar_custom.dart';
import 'package:tic_tac_toe/src/views/widgets/footer_bar_custom.dart';
import 'package:tic_tac_toe/src/views/widgets/tic_tac_toe.dart';
import 'package:tic_tac_toe/src/views/widgets/waves_bar.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    print("build game page..");
    return MaterialApp(
      home: Scaffold(
        body: Builder(
          builder: (context) {
            return Stack(
              children: [
                WavesBar(),

                TicTacToe(),

                Container(
                  padding: EdgeInsets.only(
                    left: 18,
                    right: 18,
                    bottom: 0,
                    top: 35,
                  ),
                  child: Column(
                    children: [AppBarCustom(), Spacer(), FooterBarCustom()],
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
