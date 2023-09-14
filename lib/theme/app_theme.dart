import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppThemeConfig {
  ThemeData lightTheme = ThemeData(
      colorScheme: ColorScheme(
        primary: const Color(0xFFe20030),
        secondary: const Color(0xFFb90333),
        surface: const Color(0xFFcc0033),
        background: const Color(0xFFf8f8f8),
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
            elevation: 0, disabledForegroundColor: Colors.white),
      ),
      scaffoldBackgroundColor: Color(0xFFf8f8f8),
      textTheme: TextTheme(
        headlineLarge: TextStyle(
            color: Colors.black, fontSize: 26.sp, fontWeight: FontWeight.bold),
        headlineMedium: TextStyle(
            color: Colors.black,
            fontFamily: 'Sofia Pro',
            fontSize: 16.sp,
            fontWeight: FontWeight.bold),
        headlineSmall: TextStyle(
            color: Colors.black, fontSize: 16.sp, fontWeight: FontWeight.bold),
        bodyLarge: TextStyle(
            color: Colors.black, fontSize: 14.sp, fontWeight: FontWeight.bold),
        bodyMedium: TextStyle(
            color: Colors.black, fontSize: 14.sp, fontWeight: FontWeight.w600),
        bodySmall: TextStyle(
            color: Colors.black,
            fontSize: 14.sp,
            fontWeight: FontWeight.normal),
        displayLarge: TextStyle(
            color: Colors.black, fontSize: 12.sp, fontWeight: FontWeight.bold),
        displayMedium: TextStyle(
            color: Colors.black, fontSize: 12.sp, fontWeight: FontWeight.w600),
        displaySmall: TextStyle(
            color: Colors.black,
            fontSize: 12.sp,
            fontWeight: FontWeight.normal),
        titleLarge: TextStyle(
            color: Colors.black, fontSize: 10.sp, fontWeight: FontWeight.bold),
        titleMedium: TextStyle(
            color: Colors.black, fontSize: 10.sp, fontWeight: FontWeight.w600),
        titleSmall: TextStyle(
            color: Colors.black,
            fontSize: 10.sp,
            fontWeight: FontWeight.normal),
        labelLarge: TextStyle(
            color: Colors.black, fontSize: 8.sp, fontWeight: FontWeight.bold),
        labelMedium: TextStyle(
            color: Colors.black, fontSize: 8.sp, fontWeight: FontWeight.w600),
        labelSmall: TextStyle(
            color: Colors.black,
            fontSize: 8
                .sp,
            fontWeight: FontWeight.normal),
      ).apply(fontFamily: 'Poppins'));
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
