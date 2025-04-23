import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/controllers/square_controller.dart';
import 'package:tic_tac_toe/src/theme/app_colors.dart';
import 'package:tic_tac_toe/src/views/widgets/square.dart';

class TicTacToe extends StatelessWidget {
  final List<SquareController> squares = List.generate(
    9,
    (_) => SquareController(),
  );

  TicTacToe({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Center(
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
                  return Square(model: squares[row * 3 + col]);
                }),
              );
            }),
          ),
        ),
      ),
    );
  }
}
