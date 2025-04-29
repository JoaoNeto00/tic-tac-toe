import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/controllers/square_controller.dart';
import 'package:tic_tac_toe/src/theme/app_colors.dart';

class Square extends StatelessWidget {
  final SquareController model;

  const Square({super.key, required this.model});

  @override
  Widget build(BuildContext context) {


    print("build square..");
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
                    width: double.infinity,
                    child: Image.asset(
                      model.value,
                      width: double.infinity,
                      height: 70,
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
