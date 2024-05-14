import 'package:flutter/material.dart';
import 'package:instagram_ui/configs/app_colors.dart';
import 'package:instagram_ui/configs/text_theme.dart';

class AppTheme {
  AppTheme._();

  static final lightTheme = ThemeData(
    fontFamily: "Poppins",
    colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryColor),
    scaffoldBackgroundColor: AppColor.white,
    textTheme: TextTheme(
      headlineLarge: AppTextTheme.headlineLarge,
      headlineMedium: AppTextTheme.headlineMedium,
      bodyLarge: AppTextTheme.bodyLarge,
      bodyMedium: AppTextTheme.bodyMedium,
      bodySmall: AppTextTheme.bodySmall,
    ),
    primaryTextTheme: TextTheme(
      bodyMedium: AppTextTheme.bodyMedium,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: AppColor.white,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      unselectedItemColor: AppColor.black,
    ),
  );

  static final darkTheme = ThemeData(
    fontFamily: "Poppins",
    scaffoldBackgroundColor: AppColor.black,
    textTheme: TextTheme(
      headlineLarge:
          AppTextTheme.headlineMedium.copyWith(color: AppColor.white),
      headlineMedium:
          AppTextTheme.headlineLarge.copyWith(color: AppColor.white),
      bodyLarge: AppTextTheme.bodyLarge.copyWith(color: AppColor.white),
      bodyMedium: AppTextTheme.bodyMedium.copyWith(color: AppColor.white),
      bodySmall: AppTextTheme.bodySmall.copyWith(color: AppColor.white),
    ),
    primaryTextTheme: TextTheme(
      bodyMedium: AppTextTheme.bodyMedium.copyWith(color: AppColor.white),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: AppColor.black,
    ),
  );
}
