import 'package:flutter/widgets.dart';
import 'package:tic_tac_toe/src/controllers/square_controller.dart';

class BoardController extends ChangeNotifier {
  List<SquareController> squares = List.generate(9, (_) => SquareController());

  void resetBoard() {
    for (var square in squares) {
      square.reset();
    }
    notifyListeners();
  }
}
