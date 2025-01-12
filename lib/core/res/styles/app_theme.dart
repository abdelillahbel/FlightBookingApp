import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Color primary = const Color(0xFF6887AF);
Color primary = const Color(0xFFcc0001);

class AppTheme {
  static Color primaryColor = primary;
  static const Color bgColor = const Color(0xFFEEEDF2);
  static Color textColor = const Color(0xFF3B3B3B);

  // ticket color
  static Color ticketTopColor = const Color(0xFFcc0001);
  static Color ticketBottomColor = const Color.fromARGB(255, 255, 255, 255);

  static TextStyle textStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: textColor,
      fontFamily: GoogleFonts.poppins().fontFamily);
  static TextStyle headLineStyle1 = TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.bold,
      color: textColor,
      fontFamily: GoogleFonts.poppins().fontFamily);
  static TextStyle headLineStyle2 = TextStyle(
      fontSize: 21,
      fontWeight: FontWeight.bold,
      color: textColor,
      fontFamily: GoogleFonts.poppins().fontFamily);
  static TextStyle headLineStyle3 = TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w500,
      fontFamily: GoogleFonts.poppins().fontFamily);
  static TextStyle headLineStyle4 = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      fontFamily: GoogleFonts.poppins().fontFamily);
}
