import 'package:flutter/material.dart';
import 'package:flutter_commons/widgets/responsive/device_dependent_constrained_box.dart';

class SettingsCard extends StatelessWidget {
  final dynamic title;
  final List<Widget> children;

  /// Damit die Card die Device-Constraints einhalten kann, muss umschliessende Column z.B. center sein.
  const SettingsCard({super.key, required this.title, required this.children});

  Widget _buildTitle(BuildContext context) {
    if (title is Widget) return title as Widget;
    var titleText = 'Titel';
    if (title is String) titleText = title as String;
    return Text(titleText, style: Theme.of(context).textTheme.titleLarge);
  }

  @override
  Widget build(BuildContext context) {
    return DeviceDependentWidthConstrainedBox(
      child: Card(
        margin: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTitle(context),
              ...children,
            ],
          ),
        ),
      ),
    );
  }
}
