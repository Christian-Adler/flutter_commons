import 'package:example/screens/color_utils_screen.dart';
import 'package:example/screens/device_storage_screen.dart';
import 'package:flutter/material.dart';

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
          ]),
        ),
      ),
    );
  }
}
