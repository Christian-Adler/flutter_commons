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
    // mit transparenz... :/
    // Map<int, Color> color = {
    //   50: mainColor.withOpacity(.1),
    //   100: mainColor.withOpacity(.2),
    //   200: mainColor.withOpacity(.3),
    //   300: mainColor.withOpacity(.4),
    //   400: mainColor.withOpacity(.5),
    //   500: mainColor.withOpacity(.6),
    //   600: mainColor.withOpacity(.7),
    //   700: mainColor.withOpacity(.8),
    //   800: mainColor.withOpacity(.9),
    //   900: mainColor.withOpacity(1),
    // };

    Map<int, Color> color = {
      50: lighten(mainColor, 90),
      100: lighten(mainColor, 80),
      200: lighten(mainColor, 60),
      300: lighten(mainColor, 40),
      400: lighten(mainColor, 20),
      500: mainColor,
      600: darken(mainColor, 20),
      700: darken(mainColor, 40),
      800: darken(mainColor, 60),
      900: darken(mainColor, 80),
    };
    return MaterialColor(mainColor.value, color);
  }
}
