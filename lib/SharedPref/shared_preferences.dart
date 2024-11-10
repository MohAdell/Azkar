import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../Azkar_model/azkar_model.dart';

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
class AzkarRepository {
  Future<void> saveAzkar(AzkarModel azkar) async {
    final prefs = await SharedPreferences.getInstance();
    List<String>? azkarList = prefs.getStringList('addAzkarList') ?? [];
    azkarList.add(jsonEncode(azkar.toJson()));
    await prefs.setStringList('addAzkarList', azkarList);
  }

  Future<List<AzkarModel>> loadAzkar() async {
    final prefs = await SharedPreferences.getInstance();
    List<String>? azkarList = prefs.getStringList('addAzkarList') ?? [];
    return azkarList
        .map((azkarData) => AzkarModel.fromJson(jsonDecode(azkarData)))
        .toList();
  }
}