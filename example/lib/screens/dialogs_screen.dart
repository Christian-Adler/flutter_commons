import 'package:flutter/material.dart';
import 'package:flutter_commons/utils/dialogs.dart';

class DialogsScreen extends StatelessWidget {
  static const routeName = '/dialogs';

  const DialogsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialogs'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            ElevatedButton(
              onPressed: () {
                Dialogs.simpleOkDialog('Dialog-Text', context, title: 'Dialog-Title');
              },
              child: const Text('Ok-Dialog'),
            ),
            ElevatedButton(
              onPressed: () {
                Dialogs.showSnackBar('Some text to show in SnackBar', context);
              },
              child: const Text('Show Snackbar'),
            ),
          ]),
        ),
      ),
    );
  }
}
