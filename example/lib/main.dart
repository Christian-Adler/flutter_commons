import 'package:example/screens/color_utils_screen.dart';
import 'package:example/screens/device_storage_screen.dart';
import 'package:example/screens/overview_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Commons Examples',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OverviewScreen(),
      routes: {
        OverviewScreen.routeName: (context) => const OverviewScreen(),
        ColorUtilsScreen.routeName: (context) => const ColorUtilsScreen(),
        DeviceStorageScreen.routeName: (context) => const DeviceStorageScreen(),
      },
    );
  }
}
