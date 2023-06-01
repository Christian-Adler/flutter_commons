import 'package:flutter/material.dart';

class ColorUtils {
  // https://stackoverflow.com/questions/58360989/programmatically-lighten-or-darken-a-hex-color-in-dart

  /// Darken a color by [percent] amount (100 = black)
  static Color darken(Color c, [int percent = 10]) {
    assert(1 <= percent && percent <= 100);
    var f = 1 - percent / 100;
    return Color.fromARGB(c.alpha, (c.red * f).round(), (c.green * f).round(), (c.blue * f).round());
  }

  /// Lighten a color by [percent] amount (100 = white)
  static Color lighten(Color c, [int percent = 10]) {
    assert(1 <= percent && percent <= 100);
    var p = percent / 100;
    return Color.fromARGB(c.alpha, c.red + ((255 - c.red) * p).round(), c.green + ((255 - c.green) * p).round(),
        c.blue + ((255 - c.blue) * p).round());
  }

  /// - add [[0, 360]]
  static Color hue(Color c, [double add = 10]) {
    var hsl = HSLColor.fromColor(c);
    return hsl.withHue((hsl.hue + add) % 360).toColor();
  }

  /// usage: e.g. <pre>MaterialColor mColor = customMaterialColor(const Color(0xffbab0d4));</pre>
  static MaterialColor customMaterialColor(Color mainColor) {
    Map<int, Color> color = {
      50: ColorUtils.lighten(mainColor, 88),
      100: ColorUtils.lighten(mainColor, 70),
      200: ColorUtils.lighten(mainColor, 51),
      300: ColorUtils.lighten(mainColor, 31),
      400: ColorUtils.lighten(mainColor, 15),
      500: mainColor,
      600: ColorUtils.darken(mainColor, 8),
      700: ColorUtils.darken(mainColor, 20),
      800: ColorUtils.darken(mainColor, 33),
      900: ColorUtils.darken(mainColor, 52),
    };
    return MaterialColor(mainColor.value, color);
  }
}
