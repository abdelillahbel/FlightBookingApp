import 'package:flutter/material.dart';

Color primary = const Color(0xFF6887AF);

class AppStyles {
  static Color primaryColor = primary;
  static Color bgColor = const Color(0xFFEEEDF2);
  static Color textColor = const Color(0xFF3B3B3B);

  // ticket color
  static Color ticketTopColor = const Color(0xFF007BFF); // vibrant blue
  static Color ticketBottomColor = const Color(0xFFFF6347); // bright orange

  static TextStyle textStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: textColor);
  static TextStyle headLineStyle1 =
      TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: textColor);
  static TextStyle headLineStyle2 =
      TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: textColor);
  static TextStyle headLineStyle3 =
      const TextStyle(fontSize: 17, fontWeight: FontWeight.w500);
}
