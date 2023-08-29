import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  String currentLanguage = "en";

  enableDarkTheme() {
    themeMode = ThemeMode.dark;
    notifyListeners();
  }

  enableLightTheme() {
    themeMode = ThemeMode.light;
    notifyListeners();
  }

  bool isDark() {
    return themeMode == ThemeMode.dark;
  }

  selectedArabic() {
    currentLanguage = "ar";
    notifyListeners();
  }

  electedEnglish() {
    currentLanguage = "en";
    notifyListeners();
  }

  bool CurrentLanguage() {
    return currentLanguage == "en";
  }
}
