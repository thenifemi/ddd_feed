import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors/colors.dart';

final themeData = ThemeData(
  brightness: Brightness.dark,
  primaryColor: AppColors.white,
  scaffoldBackgroundColor: AppColors.white,
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    color: Colors.transparent,
    elevation: 0.0,
    centerTitle: false,
  ),
  textTheme: TextTheme(
    displayLarge: GoogleFonts.lato(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: AppColors.greyDark,
    ),
    displayMedium: GoogleFonts.lato(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AppColors.greyDark,
    ),
    displaySmall: GoogleFonts.lato(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.greyDark,
    ),
    headlineMedium: GoogleFonts.lato(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.greyDark,
    ),
    headlineSmall: GoogleFonts.lato(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: AppColors.greyDark,
    ),
    // Used for "CIRCLE" logo
    titleLarge: GoogleFonts.anton(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: AppColors.black,
    ),
    bodyLarge: GoogleFonts.lato(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.greyDark,
    ),
    bodyMedium: GoogleFonts.lato(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: AppColors.greyDark,
    ),
    labelLarge: GoogleFonts.lato(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: AppColors.greyDark,
    ),
    bodySmall: GoogleFonts.lato(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.greyDark,
    ),
    labelSmall: GoogleFonts.lato(
      fontSize: 10,
      fontWeight: FontWeight.w600,
      color: AppColors.greyDark,
    ),
  ),
);
