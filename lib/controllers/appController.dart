import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  static AppController instance = AppController();

  bool isDartTheme = false;
  final String logoPath = 'lib/assets/images/logo-light.svg';

  changeTheme() {
    isDartTheme = !isDartTheme;
    notifyListeners();
  }
}
