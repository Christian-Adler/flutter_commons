import 'package:flutter/material.dart';

import 'navigator_transition_builder.dart';

class NavigationUtils {
  static RouteSettings? getActRouteSettings(BuildContext ctx) {
    return ModalRoute.of(ctx)?.settings;
  }

  static bool closeDrawerIfOpen(BuildContext context) {
    // print('Close drawer if open...');
    // Drawer offen? Dann zuerst schliessen
    // var scaffoldState = Scaffold.of(context);
    var scaffoldState = Scaffold.maybeOf(context);
    // print('scaffold state ');
    // print(scaffoldState);
    if (scaffoldState != null && scaffoldState.isDrawerOpen) {
      // print('Close drawer');
      scaffoldState.closeDrawer();
      return true;
    }
    return false;
  }

  /// get Navigator of context and push screen
  static void push(BuildContext context, Widget screen) {
    // Standard Animation
    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => screen));

    Navigator.of(context).push(NavigatorTransitionBuilder.buildSlideHTransition(screen));
  }
}
