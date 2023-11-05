import 'package:flutter/material.dart';

class AppBarState extends ChangeNotifier {
  bool _showAppBar = false;
  String _title = "";

  bool get showAppBar => _showAppBar;
  String get getTitle => _title;

  void setShowAppBar(bool value, String appbarTitle) {
    _showAppBar = value;
    if (_showAppBar) {
      _title = appbarTitle;
    }
    notifyListeners();
  }
}
