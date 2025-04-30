import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/src/controllers/game_controller.dart';
import 'package:tic_tac_toe/src/theme/app_colors.dart';
import 'package:tic_tac_toe/src/controllers/square_controller.dart';

class Square extends StatelessWidget {
  final int index;

  const Square({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Consumer<SquareController>(
      builder: (context, model, _) {
        print("build square at index $index..");

        return GestureDetector(
          onTap: () {
            context.read<GameController>().handleTap(context, index);
          },
          child: Container(
            width: 110,
            height: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: AppColors.backgroundsquare,
            ),
            child: Center(
              child:
                  model.value.isNotEmpty
                      ? Container(
                        padding: EdgeInsets.all(0),
                        width: double.infinity,
                        child: Image.asset(
                          model.value,
                          width: double.infinity,
                          height: 70,
                          fit: BoxFit.contain,
                        ),
                      )
                      : const SizedBox.shrink(),
            ),
          ),
        );
      },
    );
  }
}
