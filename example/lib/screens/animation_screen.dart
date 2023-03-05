import 'package:flutter/material.dart';
import 'package:flutter_commons/widgets/animation/fade_in.dart';

class AnimationScreen extends StatelessWidget {
  static const routeName = '/animation';

  const AnimationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Table')),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              height: 40,
            ),
            FadeIn(
                child: Container(
              width: 60,
              height: 60,
              color: Colors.blue,
            ))
          ]),
        ),
      ),
    );
  }
}
