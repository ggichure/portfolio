import 'dart:math';

import 'package:flutter/material.dart';

class AppThemeStyles {
  //text
  static const textboldHugeW = TextStyle(
      fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.white);
  static const hintTextw = TextStyle(
      fontWeight: FontWeight.bold, fontSize: 15.0, color: Colors.white);

  static const textBoldBlack =
      TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold);
  static const textGrey = TextStyle(fontSize: 15.0, color: Colors.grey);

  //images
  static const avatarUrl =
      "https://avatars3.githubusercontent.com/u/31619962?s=460&v=4";

  static Color strToColor(String name) {
    assert(name.length > 1);
    final int hash = name.hashCode & 0xffff;
    final double hue = (360.0 * hash / (1 << 15)) % 360.0;
    return HSVColor.fromAHSV(1.0, hue, 0.4, 0.90).toColor();
  }

  static Color randomColor() {
    return Color.fromARGB(240, Random().nextInt(240), Random().nextInt(240),
        Random().nextInt(240));
  }
}
