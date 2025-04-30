import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/src/controllers/game_controller.dart';
import 'package:tic_tac_toe/src/views/widgets/square.dart';
import 'package:tic_tac_toe/src/theme/app_colors.dart';

class TicTacToe extends StatelessWidget {
  const TicTacToe({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 390,
        height: 400,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35.0),
          color: AppColors.backgroundTicTacToe,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(3, (row) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(3, (col) {
                int index = row * 3 + col;

                return ChangeNotifierProvider.value(
                  value: context.read<GameController>().squares[index],
                  child: Square(index: index),
                );
              }),
            );
          }),
        ),
      ),
    );
  }
}
