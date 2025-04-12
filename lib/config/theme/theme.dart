import 'package:flutter/material.dart';
import 'package:shafasrm_app/config/theme/colors.dart';

class AppThemes {
  static ThemeData lightTheme = _theme(false);
  static ThemeData darkTheme = _theme(true);
  static ThemeData _theme(bool isDark) {
    return ThemeData(
      useMaterial3: true,
      brightness: isDark ? Brightness.dark : Brightness.light,

      colorScheme:
          isDark
              ? const ColorScheme.dark(
                primary: Colors.blue,
                secondary: Colors.blueAccent,
                error: Colors.red,
                onPrimary: Colors.white,
                onSecondary: Colors.white,
                onSurface: Colors.white,
                onError: Colors.white,
              )
              : const ColorScheme.light(
                primary: Colors.blue,
                secondary: Colors.blueAccent,
                error: Colors.red,
                onPrimary: Colors.white,
                onSecondary: Colors.white,
                onSurface: Colors.black,
                onError: Colors.white,
              ),

      scaffoldBackgroundColor:
          isDark
              ? AppColors.scaffoldBackgroundDark
              : AppColors.scaffoldBackgroundLight,

      bottomNavigationBarTheme: BottomNavigationBarThemeData().copyWith(
        backgroundColor: Colors.transparent,
      ),

      textTheme: TextTheme(
        displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        titleLarge: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        bodyMedium: TextStyle(fontSize: 14.0),
      ),

      // AppBar Theme
      appBarTheme: AppBarTheme(
        backgroundColor: isDark ? Colors.grey.shade900 : Colors.grey.shade100,
        foregroundColor: isDark ? Colors.white : Colors.black,
      ),

      // Button Themes
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          textStyle: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        ),
      ),
    );
  }
}
