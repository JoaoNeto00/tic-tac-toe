import 'package:flutter/material.dart';

class SquareModel extends ChangeNotifier {
  String _value = "";

  String get value => _value;

  void togle(String symbol) {
    if (_value == "assets/image_x.png") {
      _value = "assets/image_o.png";
    } else {
      _value = "assets/image_x.png";
    }
    notifyListeners();
  }
}
