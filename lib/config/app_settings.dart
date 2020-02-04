import 'package:flutter/material.dart';

class AppSettings extends ChangeNotifier {
  bool _showSemanticsDebugger = false;

  get showSemanticsDebugger => _showSemanticsDebugger;

  void toggleSemanticsDebugger() {
    _showSemanticsDebugger = !_showSemanticsDebugger;
    notifyListeners();
  }
}
