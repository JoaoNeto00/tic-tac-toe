import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/models/square_model.dart';
import 'package:tic_tac_toe/src/theme/app_colors.dart';

class Square extends StatelessWidget {
  final SquareModel model;

  const Square({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    print("build saquere..");
    return GestureDetector(
      onTap: () {
        model.togle("assets/image_x.png");
      },
      child: Container(
        width: 110,
        height: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: AppColors.backgroundsquare,
        ),
        child: Center(
          child: AnimatedBuilder(
            animation: model,
            builder: (context, _) {
              return model.value.isNotEmpty
                  ? Container(
                    padding: EdgeInsets.all(0),
                    width: 50,
                    child: Image.asset(
                      model.value,
                      width: 120,
                      height: 120,
                      fit: BoxFit.contain,
                    ),
                  )
                  : const SizedBox.shrink();
            },
          ),
        ),
      ),
    );
  }
}
