import 'package:flutter/material.dart';

class Routing with ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void onTabChange(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
