import 'package:flutter/material.dart';
import 'package:provider_mvc/models/counter_model.dart';


class CounterProvider with ChangeNotifier {
  final CounterModel _counter = CounterModel();

  int get count => _counter.count;

  void increment() {
    _counter.count++;
    notifyListeners();
  }

  void decrement() {
    _counter.count--;
    notifyListeners();
  }
}