import 'package:flutter/material.dart';
import 'package:scrollable_table_view/scrollable_table_view.dart';
import 'package:material_table_view/material_table_view.dart';

class Sam2 extends StatelessWidget {
  const Sam2({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
              // Datatable widget that have the property columns and rows.
              columns: [
                // Set the name of the column
                DataColumn(
                  label: Text('ID'),
                ),
                DataColumn(
                  label: Text('Name'),
                ),
                DataColumn(
                  label: Text('LastName'),
                ),
                DataColumn(
                  label: Text('Age'),
                ),
                DataColumn(
                  label: Text('ID'),
                ),
                DataColumn(
                  label: Text('Name'),
                ),
              ],
              rows: [
                // Set the values to the columns
                dataRow(['1', '2', '3', '4', '5', '6']),
                DataRow(color: MaterialStateProperty.all(Colors.amber), cells: [
                  DataCell(Text("2")),
                  DataCell(Text("John")),
                  DataCell(Text("Anderson")),
                  DataCell(Text("24")),
                  DataCell(Text("2")),
                  DataCell(Text("John")),
                ]),
              ]),
        ),
        // child: SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Table(
        //     border: TableBorder.all(),
        //     children: [
        //       buildRow([
        //         'Order',
        //         'Date',
        //         'Name',
        //         'Price',
        //         'payment Type',
        //         'Receipt',
        //         'Status',
        //         'Action',
        //       ], isHeader: true),
        //     ],
        //   ),
        // ),
      ),
    ));
  }

  TableRow buildRow(List<String> cells, {bool isHeader = false}) => TableRow(
          children: cells.map((e) {
        final style = TextStyle(
          fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
        );
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              e,
              style: style,
            ),
          ),
        );
      }).toList());

  DataRow dataRow(List<String> items) {
    return DataRow(
        cells: items.map((e) {
      return DataCell(Text(e));
    }).toList());
  }
}
