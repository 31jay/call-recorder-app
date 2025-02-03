import 'package:flutter/material.dart';

class AppThemeProvider with ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;

  void toggleTheme() {
    themeMode =
        (themeMode == ThemeMode.dark) ? ThemeMode.light : ThemeMode.dark;
    notifyListeners();
  }
}
