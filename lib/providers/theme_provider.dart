// lib/providers/theme_provider.dart

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../main.dart';
import '../core/constants/app_constants.dart';

// Theme Provider - manages dark mode state
final themeProvider = StateNotifierProvider<ThemeNotifier, bool>((ref) {
  final prefs = ref.watch(sharedPreferencesProvider);
  return ThemeNotifier(prefs);
});

class ThemeNotifier extends StateNotifier<bool> {
  final SharedPreferences _prefs;

  ThemeNotifier(this._prefs)
      : super(_prefs.getBool(AppConstants.isDarkModeKey) ?? false);

  Future<void> toggleTheme() async {
    state = !state;
    await _prefs.setBool(AppConstants.isDarkModeKey, state);
  }

  Future<void> setTheme(bool isDark) async {
    state = isDark;
    await _prefs.setBool(AppConstants.isDarkModeKey, isDark);
  }
}
