import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int counter = 0;

  void increment() {
    counter++;
    notifyListeners();
  }

  void decrement() {
    if (counter <= 0) return;

    counter--;
    notifyListeners();
  }

  void reset() {
    counter = 0;
    notifyListeners();
  }
}
