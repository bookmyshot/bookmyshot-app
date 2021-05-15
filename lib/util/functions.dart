import 'package:book_my_shot/util/painter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_null_safety/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData getThemeData() {
  return ThemeData(
    // * ========================================================================== Top Level Themes
    primaryColor: Painter.gray100,
    scaffoldBackgroundColor: Painter.gray100,
    // * =============================================================================== Text Themes
    textTheme: TextTheme(
      // - OnBoarding Title
      headline1: GoogleFonts.poppins(
        textStyle: TextStyle(fontSize: 32.0),
        color: Colors.white,
        fontWeight: FontWeight.bold,
        height: 1.5,
      ),
      // - Add New TaxPayer
      headline2: GoogleFonts.poppins(
        textStyle: TextStyle(fontSize: 30.0),
        color: Colors.white,
        fontWeight: FontWeight.bold,
        height: 1.5,
      ),
      // - Add New TaxPayer OTP
      headline3: GoogleFonts.poppins(
        textStyle: TextStyle(fontSize: 24.0),
        color: Colors.white,
        fontWeight: FontWeight.w600,
        height: 1.5,
      ),
      // - Summary Section Title
      headline4: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontSize: 20.0,
          height: 1.5,
        ),
        color: Colors.white,
      ),
      // - Card Title, AppBar Name
      headline5: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontSize: 16.0,
          height: 1.5,
        ),
        color: Colors.white,
      ),
      headline6: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
          height: 1.5,
        ),
        color: Painter.gray100,
      ),
      caption: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontSize: 14.0,
          height: 1.5,
          letterSpacing: 1,
        ),
        color: Painter.gray700,
      ),
      // - Number
      bodyText1: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontSize: 16.0,
          height: 1.5,
        ),
        color: Colors.white,
      ),
      bodyText2: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontSize: 12.0,
          height: 1.5,
        ),
        color: Colors.white,
      ),
      button: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 14.0,
      ),
    ),
    // - ============================================================================ outline button
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        primary: Painter.gray100,
        shape: StadiumBorder(),
        side: BorderSide(
          width: 1,
          color: Painter.gray100,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 12.0,
          horizontal: 20.0,
        ),
      ),
    ),
  );
}
