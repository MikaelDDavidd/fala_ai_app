import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeModeHandler extends ChangeNotifier {
  late ThemeMode _mode;

  ThemeModeHandler() {
    _mode = ThemeMode.system;
    getSavedThemeMode().then((mode) {
      if (mode != null) {
        _mode = mode;
        notifyListeners();
      }
    });
  }

  ThemeMode get themeMode => _mode; // definição do getter themeMode

  void setThemeMode(ThemeMode mode) {
    _mode = mode;
    saveThemeMode(mode);
    notifyListeners();
  }

  Future<ThemeMode?> getSavedThemeMode() async {
    final prefs = await SharedPreferences.getInstance();
    final index = prefs.getInt('theme_mode');
    return ThemeMode.values[index ?? ThemeMode.system.index];
  }

  Future<void> saveThemeMode(ThemeMode mode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('theme_mode', mode.index);
  }
}
