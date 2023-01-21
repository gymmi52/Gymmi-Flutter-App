import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymmi/src/constants/colors.dart';

class MTextTheme {
  static TextTheme lighttextTheme = TextTheme(
    headline1: GoogleFonts.roboto(
      color: mButtonLightColor,
      fontWeight: FontWeight.bold,
      fontSize: 50,
    ),
    headline2: GoogleFonts.anekBangla(
      color: mButtonLightColor,
      fontWeight: FontWeight.bold,
      fontSize: 30,
    ),
    headline3: GoogleFonts.montserrat(
      color: mButtonLightColor,
      fontWeight: FontWeight.bold,
      fontSize: 30,
    ),
    headline4: GoogleFonts.poppins(
      color: mButtonLightColor,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
    headline5: GoogleFonts.lato(
      color: mButtonLightColor,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
    headline6: GoogleFonts.oswald(
      color: mButtonLightColor,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),

    subtitle1: GoogleFonts.timmana(
      color: mButtonLightColor,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
    subtitle2: GoogleFonts.vesperLibre(
      color: mButtonLightColor,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),

    bodyText1: GoogleFonts.montserrat(
        fontWeight: FontWeight.bold,
        color: mButtonLightColor,
        fontSize: 18),
  );
  static TextTheme darktextTheme = TextTheme(
    headline1: GoogleFonts.roboto(
      color: mButtonDarkColor,
      fontWeight: FontWeight.bold,
      fontSize: 50,
    ),
    headline2: GoogleFonts.anekBangla(
      color: mButtonDarkColor,
      fontWeight: FontWeight.bold,
      fontSize: 28,
    ),
    headline3: GoogleFonts.montserrat(
      color: mButtonDarkColor,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
    headline4: GoogleFonts.poppins(
      color: mButtonDarkColor,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
    headline5: GoogleFonts.lato(
      color: mButtonDarkColor,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
    headline6: GoogleFonts.oswald(
      color: mButtonDarkColor,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),

    subtitle1: GoogleFonts.timmana(
      color: mButtonDarkColor,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
    subtitle2: GoogleFonts.vesperLibre(
      color: mButtonDarkColor,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),

    bodyText1: GoogleFonts.montserrat(
        fontWeight: FontWeight.bold,
        color: mButtonDarkColor,
        fontSize: 18),
  );
}
