import 'package:example/screens/color_utils_screen.dart';
import 'package:example/screens/device_storage_screen.dart';
import 'package:example/screens/table_screen.dart';
import 'package:flutter/material.dart';

import 'dialogs_screen.dart';
import 'gradient_app_bar_screen.dart';

class OverviewScreen extends StatelessWidget {
  static const routeName = '/overview';

  const OverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Overview')),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed(ColorUtilsScreen.routeName),
              child: const Text('ColorUtils'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed(DeviceStorageScreen.routeName),
              child: const Text('DeviceStorage'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed(GradientAppBarScreen.routeName),
              child: const Text('GradientAppBar'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed(DialogsScreen.routeName),
              child: const Text('Dialogs'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed(TableScreen.routeName),
              child: const Text('Table'),
            ),
          ]),
        ),
      ),
    );
  }
}
