import 'package:flutter/material.dart';

class ColorService {

  static MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    strengths.forEach((strength) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    });
    return MaterialColor(color.value, swatch);
  }
}

class EYColors {
  static const Color EY_BRAND_COLOR = const Color(0xffffe600);

  static const Color EY_DARK_GREY_COLOR = const Color(0xff2e2e38);

  static const Color EY_GREY_COLOR = const Color(0xff585860);

  static const Color EY_WHITE_COLOR = const Color(0xffe7e7ea);

  static const Color EY_RED_COLOR = const Color(0xffb9251c);

  static const Color EY_GREEN_COLOR = const Color(0xff168736);

  static const Color EY_DARK2_GREY_COLOR = const Color(0xff1a1a24);

  static const Color EY_LIGHT_GREY_COLOR = const Color(0xffaaaab1);

}