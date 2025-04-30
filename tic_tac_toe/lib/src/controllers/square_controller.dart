import 'package:flutter/material.dart';

class SquareController extends ChangeNotifier {
  String _value = "";
  String get value => _value;

  void setValue(String symbol) {
    _value = symbol;
    notifyListeners();
  }

  void reset() {
    _value = "";
    notifyListeners();
  }
}
