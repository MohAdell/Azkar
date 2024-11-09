import 'package:flutter/material.dart';

ThemeData LightMode = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
        onSurface: Colors.grey.shade400,
        onSecondary: Colors.black,
        onPrimary: Colors.black,
        scrim: Colors.grey.shade900,
        shadow: Colors.grey.shade600,
        surface: Colors.grey.shade400,
        primary: Colors.grey.shade300,
        secondary: Colors.grey.shade200));

ThemeData DarktMode = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
        onSurface: Colors.grey.shade700,
        onSecondary: Colors.white,
        onPrimary: Colors.white,
        scrim: Colors.grey.shade700,
        shadow: Colors.grey.shade600,
        surface: Colors.grey.shade900,
        primary: Colors.grey.shade800,
        secondary: Colors.grey.shade700));
