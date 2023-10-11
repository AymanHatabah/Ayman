import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  String languagecod = "en";
  ThemeMode modeapp = ThemeMode.light;

  void ChangeLanguage(String langcode) {
    languagecod = langcode;
    notifyListeners();
  }

  ChangeTheme(ThemeMode mode) {
    modeapp = mode;

    notifyListeners();
  }
}
