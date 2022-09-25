import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class AppColors {
  static Color primary = const Color(0xFF355CF2);
  static Color secondary = const Color(0xFF3894FC);
  static Color white = const Color(0xFFFFFFFF);
  static Color cardBackground = const Color(0xFFF8F8F8);
  static Color lighterGrey = const Color(0xFFFCFCFC);
  static Color grey = const Color(0xFFC0C0C0);
  static Color darkerGrey = const Color(0xFF5A5A5A);

  static MaterialColor getMaterialColor(Color color) {
    int colorRed = color.red;
    int colorGreen = color.green;
    int colorBlue = color.blue;

    Map<int, Color> colorMap = {
      50: Color.fromRGBO(colorRed, colorGreen, colorBlue, .1),
      100: Color.fromRGBO(colorRed, colorGreen, colorBlue, .2),
      200: Color.fromRGBO(colorRed, colorGreen, colorBlue, .3),
      300: Color.fromRGBO(colorRed, colorGreen, colorBlue, .4),
      400: Color.fromRGBO(colorRed, colorGreen, colorBlue, .5),
      500: Color.fromRGBO(colorRed, colorGreen, colorBlue, .6),
      600: Color.fromRGBO(colorRed, colorGreen, colorBlue, .7),
      700: Color.fromRGBO(colorRed, colorGreen, colorBlue, .8),
      800: Color.fromRGBO(colorRed, colorGreen, colorBlue, .9),
      900: Color.fromRGBO(colorRed, colorGreen, colorBlue, 1),
    };

    return MaterialColor(color.value, colorMap);
  }
}
