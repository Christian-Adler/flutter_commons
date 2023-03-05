import 'package:flutter/material.dart';
import 'package:flutter_commons/utils/color_utils.dart';

class ColorUtilsScreen extends StatefulWidget {
  static const routeName = '/color-utils';

  const ColorUtilsScreen({Key? key}) : super(key: key);

  @override
  State<ColorUtilsScreen> createState() => _ColorUtilsScreenState();
}

class _ColorUtilsScreenState extends State<ColorUtilsScreen> {
  Color _color = Colors.purple;

  void _addHue() {
    setState(() {
      _color = ColorUtils.hue(_color, 10);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ColorUtils'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
              height: 20,
              color: _color,
            ),
            ElevatedButton(
              onPressed: _addHue,
              child: const Text('Change Hue'),
            ),
          ]),
        ),
      ),
    );
  }
}
