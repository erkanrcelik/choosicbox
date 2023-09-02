import 'package:flutter/material.dart';

class AppThemeConfig {
  ThemeData lightTheme = ThemeData(
      colorScheme: ColorScheme(
        primary: const Color(0xFF9668EF),
        secondary: const Color(0xFF535F70),
        surface: const Color(0xFFFFDFCFF),
        background: const Color(0xFFFFDFCFF),
        error: const Color(0xFFFFBA1A1A),
        onPrimary: const Color(0xFF4FD8EB),
        onSecondary: const Color(0xFFFFFFFF),
        onSurface: const Color(0xFF1A1C1E),
        onBackground: const Color(0xFF1A1C1E),
        onError: const Color(0xFFFFFFFF),
        brightness: Brightness.light,
      ),
      appBarTheme: const AppBarTheme(
        color: Colors.teal,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            primary: Colors.teal, foregroundColor: Colors.teal),
      ),
      scaffoldBackgroundColor: Colors.white,
      textTheme: TextTheme(
        bodySmall: TextStyle(color: Colors.red),
        displayLarge: TextStyle(color: Colors.red),
        displayMedium: TextStyle(color: Colors.red),
        displaySmall: TextStyle(color: Colors.red),
        headlineMedium: TextStyle(color: Colors.red),
        headlineSmall: TextStyle(color: Colors.red),
        titleLarge: TextStyle(color: Colors.red),
        titleMedium: TextStyle(color: Colors.red),
        titleSmall: TextStyle(color: Colors.red),
        labelLarge: TextStyle(color: Colors.red),
        labelMedium: TextStyle(color: Colors.red),
        labelSmall: TextStyle(color: Colors.red),
        bodyLarge: TextStyle(fontFamily: 'Sofia Pro'),
      ).apply(bodyColor: Colors.teal[800], displayColor: Colors.teal));
  ThemeData darkTheme = ThemeData(
      appBarTheme: const AppBarTheme(
        color: Colors.teal,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            primary: Colors.teal, foregroundColor: Colors.teal),
      ),
      scaffoldBackgroundColor: Colors.grey[200],
      textTheme: TextTheme(
        bodySmall: TextStyle(color: Colors.red),
        displayLarge: TextStyle(color: Colors.red),
        displayMedium: TextStyle(color: Colors.red),
        displaySmall: TextStyle(color: Colors.red),
        headlineMedium: TextStyle(color: Colors.red),
        headlineSmall: TextStyle(color: Colors.red),
        titleLarge: TextStyle(color: Colors.red),
        titleMedium: TextStyle(color: Colors.red),
        titleSmall: TextStyle(color: Colors.red),
        labelLarge: TextStyle(color: Colors.red),
        labelMedium: TextStyle(color: Colors.red),
        labelSmall: TextStyle(color: Colors.red),
        bodyLarge: TextStyle(fontFamily: 'Sofia Pro'),
      ).apply(bodyColor: Colors.teal[800], displayColor: Colors.teal));
}
