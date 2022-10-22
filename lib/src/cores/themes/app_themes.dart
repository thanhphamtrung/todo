import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/app_colors.dart';

class AppFontWeight {
  static const thin = FontWeight.w100;
  static const extraLight = FontWeight.w200;
  static const light = FontWeight.w300;
  static const regular = FontWeight.w400;
  static const medium = FontWeight.w500;
  static const semiBold = FontWeight.w600;
  static const bold = FontWeight.w700;
  static const extraBold = FontWeight.w800;
  static const ultraBold = FontWeight.w900;
}

class AppTheme {
  AppTheme._();
  static ThemeData? lightTheme = ThemeData(
    brightness: Brightness.light,
    backgroundColor: Colors.white,
    primaryColor: AppColors.primaryColor,
    highlightColor: AppColors.primaryColor.withOpacity(0.2),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
        ),
        titleTextStyle: TextStyle(
            color: AppColors.secondaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 24),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        foregroundColor: AppColors.primaryColor),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 0,
      backgroundColor: Colors.white70,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedIconTheme: IconThemeData(
        color: AppColors.primaryColor,
      ),
      unselectedIconTheme: const IconThemeData(
        color: Colors.white70,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
      foregroundColor: Colors.black,
    )),
    indicatorColor: Colors.white,
    fontFamily: 'Montserrat-Regular',
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 28,
        fontWeight: AppFontWeight.bold,
        color: Colors.white,
      ),
      headline2: TextStyle(
        fontSize: 25,
        fontWeight: AppFontWeight.bold,
        color: Colors.white,
      ),
      headline3: TextStyle(
        fontSize: 22,
        fontWeight: AppFontWeight.bold,
        color: Colors.white,
      ),
      headline4: TextStyle(
        fontSize: 20,
        fontWeight: AppFontWeight.bold,
        color: Colors.white,
      ),
      headline5: TextStyle(
        fontSize: 18,
        fontWeight: AppFontWeight.bold,
        color: Colors.white,
      ),
      headline6: TextStyle(
        fontSize: 16,
        fontWeight: AppFontWeight.bold,
        color: Colors.white,
      ),
      bodyText1: TextStyle(
        fontSize: 16,
        fontWeight: AppFontWeight.medium,
        color: Colors.white,
      ),
      bodyText2: TextStyle(
        fontSize: 14,
        fontWeight: AppFontWeight.regular,
        color: Colors.white,
      ),
      subtitle1: TextStyle(
        fontSize: 14,
        fontWeight: AppFontWeight.regular,
        color: Colors.white,
      ),
      subtitle2: TextStyle(
        fontSize: 12,
        fontWeight: AppFontWeight.regular,
        color: Colors.white,
      ),
      overline: TextStyle(
        fontSize: 10,
        fontWeight: AppFontWeight.thin,
        color: Colors.white,
      ),
    ),
    cardTheme: CardTheme(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
      size: 24.0,
    ),
    tabBarTheme: const TabBarTheme(
      unselectedLabelColor: Colors.white,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryColor,
    ),
  );

  static TextStyle filterButtonTextStyle = const TextStyle(
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  static TextStyle filterButtonTitleStyle = const TextStyle(
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.normal,
  );

  static BoxDecoration filterButtonTheme = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(cornerRadius),
  );

  static BoxDecoration filterButtonTextTheme = BoxDecoration(
    color: AppColors.primaryColor,
    borderRadius: BorderRadius.circular(cornerRadius),
  );

  static double cornerRadius = 10;

  static TextStyle filterCriteriaTextStyle = const TextStyle(fontSize: 18);

  static double sidePadding = 16;
}
