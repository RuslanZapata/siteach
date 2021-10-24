// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class MyColors {
  static Color primaryColor = Color(0xFF22384A);
  // static Color primaryColorBackground = Color(0xFFB7C8CB);
  // static Color primaryColorDark = Color(0xFF9F9F9F);
  // static Color primaryOpacityColor = Color.fromRGBO(231, 13, 50, 0.09);

  static Color primaryColorBackground_01 = Color(0xFFB7C8CB);
  static Color primaryColorBackground_02 = Color(0xFFEFEDE5);
  static Color primaryColorBackground_03 = Color(0xFF7688A0);
  static Color primaryColorBackground_04 = Color(0xFF9F9F9F);

  static Color primaryColorText_01 = Color(0xFF9F9F9F);
  static Color primaryColorText_02 = Color(0xFFECCC6E);
  static Color primaryColorText_03 = Color(0xFFFFFFFF);

  static Color getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');

    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }

    return Color(int.parse(hexColor, radix: 16));
  }
}
