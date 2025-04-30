import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/controllers/dialog_controller.dart';
import 'square_controller.dart';

class GameController extends ChangeNotifier {
  List<SquareController> squares = List.generate(9, (_) => SquareController());
  String currentPlayer = "X";

  String get currentSymbol =>
      currentPlayer == "X" ? "assets/image_x.png" : "assets/image_o.png";
  bool gameOver = false;

  void handleTap(BuildContext context, int index) {
    if (gameOver) return;

    if (squares[index].value.isEmpty) {
      squares[index].setValue(currentSymbol);

      if (checkWinner()) {
        gameOver = true;
        DialogController.showwinner(context, "Player $currentPlayer wins");
        return;
      }

      togglePlayer();
    }
  }

  void togglePlayer() {
    currentPlayer = currentPlayer == "X" ? "O" : "X";
    notifyListeners();
  }

  bool checkWinner() {
    final winPatterns = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6],
    ];

    for (var pattern in winPatterns) {
      String a = squares[pattern[0]].value;
      String b = squares[pattern[1]].value;
      String c = squares[pattern[2]].value;

      if (a.isNotEmpty && a == b && b == c) {
        return true;
      }
    }

    return false;
  }

  void resetGame() {
    for (var square in squares) {
      square.reset();
    }
    currentPlayer = "X";
    gameOver = false;
    notifyListeners();
  }
}
