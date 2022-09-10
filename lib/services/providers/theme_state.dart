import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThemeState extends ChangeNotifier {
  ThemeMode appTheme = ThemeMode.light;

  void changeTheme() {
    appTheme = appTheme == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
