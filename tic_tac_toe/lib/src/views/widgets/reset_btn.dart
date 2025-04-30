import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/src/controllers/game_controller.dart';
import 'package:tic_tac_toe/src/theme/app_colors.dart';

class ResetBtn extends StatelessWidget {
  const ResetBtn({super.key, required this.fontsize});

  final double fontsize;

  @override
  Widget build(BuildContext context) {
    Provider.of<GameController>(context, listen: false);

    return Consumer<GameController>(
      builder:
          (context, game, _) => ElevatedButton(
            onPressed: () {
              print("CLICADO !!");
              game.resetGame();
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.only(left: 10, right: 10),
              minimumSize: Size.zero,
              elevation: 0,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),

            child: Text(
              "reset",
              style: TextStyle(
                color: AppColors.primary,
                fontSize: fontsize,
                //height: 1.4,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
    );
  }
}
