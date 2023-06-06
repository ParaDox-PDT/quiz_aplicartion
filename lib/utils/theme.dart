import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:n8_default_project/utils/colors.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.C_273032,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.C_273032,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColors.C_273032,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
      ),
    ),
    textTheme:  TextTheme(
      //display
      displayLarge: TextStyle(
        color: AppColors.textColor,
        fontSize: 57,
        fontWeight: FontWeight.w800,
      ),
      displayMedium: TextStyle(
        color: AppColors.textColor,
        fontSize: 45,
        fontWeight: FontWeight.w700,
      ),
      displaySmall: TextStyle(
        color: AppColors.textColor,
        fontSize: 36,
        fontWeight: FontWeight.w600,
      ),
      //headline
      headlineLarge: TextStyle(
        color: AppColors.textColor,
        fontSize: 32,
        fontWeight: FontWeight.w700,
      ),
      headlineMedium: TextStyle(
        color: AppColors.textColor,
        fontSize: 28,
        fontWeight: FontWeight.w500,
      ),
      headlineSmall: TextStyle(
        color: AppColors.textColor,
        fontSize: 24,
        fontWeight: FontWeight.w400,
      ),

      //title
      titleLarge: TextStyle(
        color: AppColors.textColor,
        fontSize: 22,
        fontWeight: FontWeight.w700,
      ),
      titleMedium: TextStyle(
        color: AppColors.textColor,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      titleSmall: TextStyle(
        color: AppColors.textColor,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      //label
      labelLarge: TextStyle(
        color: AppColors.textColor,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      labelMedium: TextStyle(
        color: AppColors.textColor,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      labelSmall: TextStyle(
        color: AppColors.textColor,
        fontSize: 11,
        fontWeight: FontWeight.w500,
      ),
      //body
      bodySmall: TextStyle(
        color: AppColors.passiveTextColor,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: TextStyle(
        color: AppColors.textColor,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: TextStyle(
        color: AppColors.textColor,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
  static ThemeData lightTheme = ThemeData();
}
