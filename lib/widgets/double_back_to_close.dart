import 'package:flutter/material.dart';
import 'package:flutter_commons/utils/dialogs.dart';

class DoubleBackToClose extends StatefulWidget {
  /// Make Sure this child has a Scaffold widget as parent.
  final Widget child;

  /// Falls gesetzt wird dieser Callback zuerst aufgerufen.
  /// Falls true returned wird, wird abgebrochen.
  final Future<bool> Function()? checkCallback;

  /// Make Sure the child has a Scaffold widget as parent.
  /// If checkCallback is set it will be called first. If it returns true close app is canceled.
  const DoubleBackToClose({
    super.key,
    required this.child,
    this.checkCallback,
  });

  @override
  State<DoubleBackToClose> createState() => _DoubleBackToCloseState();
}

class _DoubleBackToCloseState extends State<DoubleBackToClose> {
  static const _exitTimeInMillis = 2000;
  int _lastTimeBackButtonWasTapped = 0;

  bool get _isAndroid => Theme.of(context).platform == TargetPlatform.android;

  @override
  Widget build(BuildContext context) {
    if (_isAndroid) {
      return WillPopScope(
        onWillPop: _handleWillPop,
        child: widget.child,
      );
    } else {
      return widget.child;
    }
  }

  Future<bool> _handleWillPop() async {
    final checkCallback = widget.checkCallback;
    if (checkCallback != null) {
      if (await checkCallback()) {
        return false;
      }
    }

    if (context.mounted) {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      if ((DateTime.now().millisecondsSinceEpoch - _lastTimeBackButtonWasTapped) < _exitTimeInMillis) {
        return true;
      } else {
        _lastTimeBackButtonWasTapped = DateTime.now().millisecondsSinceEpoch;
        Dialogs.showSnackBar('Press BACK again to exit!', context);
        return false;
      }
    }
    return true;
  }
}
