import 'package:flutter/material.dart';
import 'package:flutter_commons/widgets/ext/gradient_app_bar.dart';

class GradientAppBarScreen extends StatelessWidget {
  static const routeName = '/gradient-app-bar';

  const GradientAppBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: const Text('GradientAppBar'),
        gradientColors: const [Colors.blueAccent, Colors.cyanAccent],
      ),
      body: Container(),
    );
  }
}
