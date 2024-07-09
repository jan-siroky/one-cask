import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final baseTheme = ThemeData.dark().copyWith(
  textTheme: GoogleFonts.latoTextTheme(ThemeData.dark().textTheme),
);

final ebGaramondTextTheme = GoogleFonts.ebGaramondTextTheme(baseTheme.textTheme);

const primaryColor = Color(0xFFD49A00);
const secondaryColor = Color(0xFF0E1C21);
const backgroundColor = Color(0xFF0E1C21);
const darkGreyColor = Color(0xFF0B1519);
const cardColor = Color(0xFF122329);
const textColor = Color(0xFFE7E9EA);
const unselectedItemColor = Color(0xFF899194);

final themeData = baseTheme.copyWith(
  colorScheme: ColorScheme.fromSeed(
    seedColor: secondaryColor,
    secondary: primaryColor,
  ),
  cupertinoOverrideTheme: const CupertinoThemeData(
    brightness: Brightness.dark,
    primaryColor: primaryColor,
  ),
  scaffoldBackgroundColor: secondaryColor,
  canvasColor: backgroundColor,
  cardColor: backgroundColor,
  cardTheme: const CardTheme(
    color: cardColor,
    elevation: 0,
    margin: EdgeInsets.zero,
    shape: RoundedRectangleBorder(),
  ),
  appBarTheme: const AppBarTheme(
    foregroundColor: textColor,
    backgroundColor: backgroundColor,
    elevation: 0,
    iconTheme: IconThemeData(
      color: textColor,
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: darkGreyColor,
    selectedItemColor: textColor,
    unselectedItemColor: unselectedItemColor,
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
    selectedLabelStyle: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      fontFamily: GoogleFonts.lato().fontFamily,
    ),
    unselectedLabelStyle: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      fontFamily: GoogleFonts.lato().fontFamily,
    ),
  ),
  filledButtonTheme: FilledButtonThemeData(
    style: FilledButton.styleFrom(
      backgroundColor: primaryColor,
      foregroundColor: darkGreyColor,
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      textStyle: ebGaramondTextTheme.labelLarge?.copyWith(
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.5,
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      backgroundColor: Colors.transparent,
      foregroundColor: primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      textStyle: ebGaramondTextTheme.labelLarge?.copyWith(
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.5,
      ),
    ),
  ),
  textTheme: baseTheme.textTheme.copyWith(
    headlineLarge: ebGaramondTextTheme.headlineLarge?.copyWith(fontWeight: FontWeight.w500),
    headlineMedium: ebGaramondTextTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w500, fontSize: 32.0),
    headlineSmall: ebGaramondTextTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w500, fontSize: 22.0),
    labelLarge: ebGaramondTextTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w500),
    bodySmall: baseTheme.textTheme.bodySmall?.copyWith(
      color: const Color(0xFFD7D5D1),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    suffixIconColor: primaryColor,
    enabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(
        color: primaryColor,
      ),
    ),
    focusedBorder: const UnderlineInputBorder(
      borderSide: BorderSide(
        color: primaryColor,
      ),
    ),
    labelStyle: baseTheme.textTheme.bodyLarge?.copyWith(
      color: primaryColor,
    ),
  ),
);
