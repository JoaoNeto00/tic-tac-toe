import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/views/widgets/modal_winner.dart';

class DialogController {
  static void showwinner(BuildContext context, String textDialog) {
    showDialog(
      context: context,
      builder: (BuildContext context) => ModalWinner(text_dialog: textDialog),
    );
  }
}
