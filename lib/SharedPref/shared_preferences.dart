import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class ThemePreferences {
  static const String _keyTheme = 'theme';

  static Future<void> saveTheme(bool isDarkTheme) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_keyTheme, isDarkTheme);
  }

  static Future<bool> getTheme() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_keyTheme) ?? false; // Default to light theme
  }
}