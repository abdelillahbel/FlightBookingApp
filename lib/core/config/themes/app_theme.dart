import 'package:flightbookapp/core/config/themes/app_colors.dart';
import 'package:flightbookapp/core/config/themes/app_text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      brightness: Brightness.light,
    ),
    // appBarTheme: const AppBarTheme(

    // ),
    textTheme: AppTextTheme.poppins,
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: AppColors.lightBlue,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide.none,
      ),
      hintStyle: TextStyle(color: AppColors.black)
    ),
    useMaterial3: true,
  );
}
