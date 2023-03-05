import 'package:flutter/material.dart';
import 'package:flutter_commons/utils/color_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('add hue to color', () {
    Color c0 = Colors.purple;
    // var c10 = ColorUtils.hue(c0, 10);
    // print(c10);
    expect(ColorUtils.hue(c0, 10).toString(), 'Color(0xffb027ad)');
  });
}
