import 'package:flutter/material.dart';
import 'package:notes/theme/theme.dart';

class ThemeProvider with ChangeNotifier {
  //light mode as default theme
  ThemeData _themeData = lightMode;
// getter method to access the theme at other part of the code
  ThemeData get themeData => _themeData;

//getter method to know whether we are in dark mode or not
  bool get isDarkMode => _themeData == darkMode;

//setter method to set the new theme
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

//toggle to switch between themes
  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}
