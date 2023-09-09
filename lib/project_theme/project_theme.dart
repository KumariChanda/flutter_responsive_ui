import 'package:flutter/material.dart';
import 'package:xebia_delivery/responsive/colors_applied.dart';

class AppTheme {
  static final ThemeData projectDarkTheme = ThemeData(
      // scaffoldBackgroundColor: Colors.red,
      );

  static final ThemeData projectLightTheme = ThemeData(
      fontFamily: 'Roboto',
      // primaryColor: const Color(0xFFEEF2FF),
      scaffoldBackgroundColor: primaryColor,
      colorScheme: const ColorScheme.light(
        primary: Color(0xFF64748B),
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(16),
          ),
        ),
      ),
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.macOS: CupertinoPageTransitionsBuilder()
      }));
}
