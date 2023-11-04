import 'package:flutter/material.dart';

class AppBarState extends ChangeNotifier {
  bool _showAppBar = false;

  bool get showAppBar => _showAppBar;

  void setShowAppBar(bool value) {
    _showAppBar = value;
    notifyListeners();
  }
}
