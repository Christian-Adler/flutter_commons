import 'package:flutter/material.dart';
import 'package:flutter_commons/utils/table_utils.dart';

class TableScreen extends StatelessWidget {
  static const routeName = '/table';

  const TableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Table')),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Table(
              // https://api.flutter.dev/flutter/widgets/Table-class.html
              columnWidths: const <int, TableColumnWidth>{
                0: FixedColumnWidth(60), // IntrinsicColumnWidth(),
                1: FlexColumnWidth(),
                2: FlexColumnWidth(),
              },
              border: TableBorder.symmetric(
                inside: const BorderSide(width: 1, color: Colors.black12),
              ),
              children: [
                TableUtils.tableHeadline('C0', ['C1', 'C2']),
                ...[
                  TableUtils.tableRow('R1-C0', ['R1-C1', 'R1-C2']),
                  TableUtils.tableRow('R2-C0', ['R2-C1', 'R2-C2']),
                ]
              ],
            )
          ]),
        ),
      ),
    );
  }
}
