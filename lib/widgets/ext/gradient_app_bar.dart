import 'package:flutter/material.dart';

class GradientAppBar extends AppBar {
  GradientAppBar(
      {super.key,
      required Widget super.title,
      required List<Color> gradientColors,
      super.foregroundColor,
      Color? actionsColor,
      super.actions,
      super.automaticallyImplyLeading})
      : super(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: gradientColors,
              ),
            ),
          ),
          actionsIconTheme: actionsColor == null ? null : IconThemeData(color: actionsColor),
        );
}
