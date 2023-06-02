import 'package:flutter/material.dart';

class GradientAppBar extends AppBar {
  GradientAppBar(
      {super.key,
      required Widget title,
      required List<Color> gradientColors,
      Color? foregroundColor,
      Color? actionsColor,
      List<Widget>? actions,
      bool automaticallyImplyLeading = true})
      : super(
          title: title,
          automaticallyImplyLeading: automaticallyImplyLeading,
          foregroundColor: foregroundColor,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: gradientColors,
              ),
            ),
          ),
          actions: actions,
          actionsIconTheme: IconThemeData(color: actionsColor),
        );
}
