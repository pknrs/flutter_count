import 'package:flutter/material.dart';

class CounterModel with ChangeNotifier {
  int value = 0;

  void increment() {
    value += 1;
    notifyListeners();
  }

  void decrement() {
    value -= 1;
    notifyListeners();
  }

  void reset() {
    value = 0;
    notifyListeners();
  }
}
