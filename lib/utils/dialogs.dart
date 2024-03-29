import 'package:flutter/material.dart';

class Dialogs {
  /// Dismiss | hide | remove OnScreenKeyboard
  static void dismissKeyboard(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  static Future<void> simpleOkDialog(
    String text,
    BuildContext context, {
    String? title,
    String? buttonText,
  }) async {
    return showDialog<void>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: title == null ? null : Text(title),
        content: Text(
          text,
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(ctx).pop();
              },
              child: Text(buttonText ?? 'Okay'))
        ],
      ),
    );
  }

  /// show [SnackBar]
  /// * [content] Widget or Text
  static void showSnackBar(dynamic content, BuildContext context,
      {Duration? duration, SnackBarAction? snackBarAction}) {
    Duration d = duration ?? const Duration(seconds: 2);
    Widget c = (content is Widget)
        ? content
        : (content is String)
            ? Text(content)
            : const Text('invalid content given');
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: c,
        duration: d,
        action: snackBarAction,
        // behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
