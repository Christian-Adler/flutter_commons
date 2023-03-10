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
}
