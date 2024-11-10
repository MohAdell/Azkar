import 'package:azkar/theme/theme_ui.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider with ChangeNotifier {
  ThemeProvider() {_loadTheme(); }// Load theme on
  ThemeData _themeData = LightMode;
  ThemeData get themeData => _themeData;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
    _saveTheme();
  }

  void toggleTheme() {
    if (_themeData == LightMode) {
      themeData = DarktMode;
    } else {
      themeData = LightMode;
    }
  }
  Future<void> _saveTheme() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDarkTheme', _themeData == DarktMode);
  }
  Future<void> _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final isDarkTheme = prefs.getBool('isDarkTheme') ?? false; // Default to light
    themeData = isDarkTheme ? DarktMode : LightMode;
  }
}
