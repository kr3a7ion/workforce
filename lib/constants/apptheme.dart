import 'package:flutter/material.dart';
import 'package:workforce/constants/appcolors.dart';
import 'package:workforce/constants/constants.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.light(
      primary: AppColors.offwhiteBackground,
      onPrimary: AppColors.backgroundColor,
      secondary: AppColors.shadeBackgroundColor,
    ),
    cardTheme: const CardTheme(
      color: AppColors.smallCardColor,
    ),
    iconTheme: const IconThemeData(
      color: AppColors.smalltextColor,
    ),
    textTheme: TextTheme(
      displayLarge: kLargeTextStyle,
      displayMedium: kMediumTextStyle,
      displaySmall: kMediumTextStyle.copyWith(
        fontSize: 20,
      )
    ),
    
  );
}
