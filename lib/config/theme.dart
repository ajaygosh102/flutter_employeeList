import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppSizes {
  static const int splashScreenTitleFontSize = 48;
  static const int titleFontSize = 34;
  static const double sidePadding = 15;
  static const double widgetSidePadding = 20;
  static const double buttonRadius = 25;
  static const double imageRadius = 8;
  static const double linePadding = 4;
  static const double widgetBorderRadius = 34;
  static const double textFieldRadius = 4.0;
  static const EdgeInsets bottomSheetPadding =
      EdgeInsets.symmetric(horizontal: 16, vertical: 10);
  static const app_bar_size = 56.0;
  static const app_bar_expanded_size = 180.0;
  static const tile_width = 148.0;
  static const tile_height = 276.0;
}

class AppColors {
  static const red = Color(0xFFDB3022);
  static const black = Color(0xFF222222);
  static const lightGray = Color(0xFF9B9B9B);
  static const darkGray = Color(0xFF979797);
  static const white = Color(0xFFFFFFFF);
  static const orange = Color(0xFFFFBA49);
  static const background = Color(0xFFE5E5E5);
  static const backgroundLight = Color(0xFFF9F9F9);
  static const transparent = Color(0x00000000);
  static const success = Color(0xFF2AA952);
  static const green = Color(0xFF2AA952);
}

class AppStrings {
  static const errorMsg = 'Something went wrong, please try again later';
  static const serverDown = 'Internal Server Error, please try again later';
  static const noRecordsFound = 'No records found';
  static const phonePattern = '^(?:[+0]9)?[0-9]{10}';

  static const emailPattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))';
  static const loremIpsum =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua';
}

class AppTheme {
  static ThemeData of(context) {
    var theme = Theme.of(context);
    return theme.copyWith(
      primaryColor: AppColors.black,
      primaryColorLight: AppColors.lightGray,
      accentColor: AppColors.red,
      bottomAppBarColor: AppColors.lightGray,
      backgroundColor: AppColors.background,
      dialogBackgroundColor: AppColors.backgroundLight,
      errorColor: AppColors.red,
      dividerColor: Colors.transparent,
      scaffoldBackgroundColor: AppColors.transparent,
      appBarTheme: theme.appBarTheme.copyWith(
          color: AppColors.white,
          iconTheme: IconThemeData(color: AppColors.black),
          textTheme: theme.textTheme.copyWith(
              caption: GoogleFonts.poppins(
                  color: AppColors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400))),
      textTheme: theme.textTheme
          .copyWith(
            //headline5
            headline5: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 24,
                letterSpacing: 0.0,
                fontWeight: FontWeight.bold),
            //headline6
            headline6: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 20,
                letterSpacing: 0.15,
                fontWeight: FontWeight.w500),
            //subtitle1
            subtitle1: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 16,
                letterSpacing: 0.15,
                fontWeight: FontWeight.w500),
            //subtitle2
            subtitle2: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 14,
                letterSpacing: 0.1,
                fontWeight: FontWeight.w500),

            //body 1
            bodyText1: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 16,
                letterSpacing: 0.5,
                fontWeight: FontWeight.normal),
            //body 2
            bodyText2: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 14,
                letterSpacing: 0.25,
                fontWeight: FontWeight.normal),
            //button
            button: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 14,
                letterSpacing: 1.25,
                fontWeight: FontWeight.w500),
          )
          .apply(),
      buttonTheme: theme.buttonTheme.copyWith(
        minWidth: 50,
        buttonColor: AppColors.red,
      ),
    );
  }
}
