import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/theme/app_colors.dart';

class ModalWinner extends StatelessWidget {
  final String text_dialog;

  const ModalWinner({super.key, required this.text_dialog});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 150,
        margin: EdgeInsets.all(21),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: AppColors.primary,
        ),
        child: Text(
          text_dialog,
          style: TextStyle(color: AppColors.secondary, fontSize: 36.0),
        ),
      ),
    );
  }
}
