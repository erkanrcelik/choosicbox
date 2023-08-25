import 'package:flutter/material.dart';

class AppThemeConfig {

  ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme(
      primary: const Color(0xFFA47B00),
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
          primary: Colors.teal,
          foregroundColor: Colors.teal
        ),
      ),
      scaffoldBackgroundColor: Colors.grey[200],
      textTheme: const TextTheme(
        bodyMedium: TextStyle(color: Colors.red),
        bodyLarge: TextStyle(fontFamily: 'Sofia Pro'),

      ).apply(
        bodyColor: Colors.teal[800],
          displayColor: Colors.teal

      ));
 ThemeData darkTheme = ThemeData(
      appBarTheme: const AppBarTheme(
        color: Colors.teal,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          primary: Colors.teal,
            foregroundColor: Colors.teal

        ),
      ),
      scaffoldBackgroundColor: Colors.grey[200],
      textTheme: const TextTheme(
        bodyLarge: TextStyle(fontFamily: 'Sofia Pro'),
      ).apply(
        bodyColor: Colors.teal[800],
        displayColor: Colors.teal
      ));

} 
