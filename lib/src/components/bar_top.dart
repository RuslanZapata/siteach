import 'package:flutter/material.dart';

class BarTop {
  static Widget bar(
      {title = '', color = '#ECCC6E', backgroundColor = '#22384A'}) {
    return AppBar(
        backgroundColor: getColorFromHex(backgroundColor),
        title: Text(title, style: TextStyle(color: getColorFromHex(color))));
  }

  static Color getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');

    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }

    return Color(int.parse(hexColor, radix: 16));
  }
}
