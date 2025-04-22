import 'package:flutter/material.dart';

class SquareController extends ChangeNotifier {
  String _value = "";

  String get value => _value;

  void togle(String symbol) {
    _value =
        (_value == "assets/image_x.png")
            ? "assets/image_o.png"
            : "assets/image_x.png";

    notifyListeners();
  }

  void reset() {
    _value = "";
    notifyListeners();
  }
}
