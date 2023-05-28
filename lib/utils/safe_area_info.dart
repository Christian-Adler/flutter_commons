import 'package:flutter/material.dart';

class SafeAreaInfo {
  static EdgeInsets? _padding;

  /// returns 0 if determine... is not yet called.
  static double get safeAreaHeight {
    final padding = _padding;
    if (padding != null) return padding.top + padding.bottom;
    return 0;
  }

  /// Has to be called in build before use of SafeArea - e.g. in the main App (but after MultiProvider)
  static void determineSafeAreaHeight(BuildContext context) {
    _padding = MediaQuery.of(context).padding;
  }
}
