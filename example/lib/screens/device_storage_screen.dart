import 'package:flutter/material.dart';
import 'package:flutter_commons/utils/device_storage.dart';

class DeviceStorageScreen extends StatefulWidget {
  static const routeName = '/device-storage-utils';

  const DeviceStorageScreen({Key? key}) : super(key: key);

  @override
  State<DeviceStorageScreen> createState() => _DeviceStorageScreenState();
}

class _DeviceStorageScreenState extends State<DeviceStorageScreen> {
  void _readAll() async {
    print((await DeviceStorage.readAll()).toString());
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
            ElevatedButton(
              onPressed: _readAll,
              child: const Text('Read all'),
            ),
          ]),
        ),
      ),
    );
  }
}
