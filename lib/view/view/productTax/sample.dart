import 'package:flutter/material.dart';
import 'package:scrollable_table_view/scrollable_table_view.dart';
import 'package:material_table_view/material_table_view.dart';

class Sample extends StatelessWidget {
  const Sample({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
      child: TableView.builder(
        rowCount: 6,
        rowHeight: 25,
        columns: [
          TableColumn(
            width: 55,
          ),
          for (var i = 1; i < 9; i++) TableColumn(width: 55)
        ],
        rowBuilder: (context, row, contentBuilder) {
          return contentBuilder(context, (context, column) {
            return Container(
              width: 5,
              height: 5,
              decoration: BoxDecoration(
                  color: row % 2 == 0 ? Colors.green : Colors.amber),
              child: Text('$column'),
            );
          });
        },
      ),
    )
        // body: SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: SafeArea(
        //       child: Row(
        //     children: [
        //       Container(
        //         height: 60,
        //         color: Colors.amber,
        //         child: Row(
        //           children: [
        //             Container(
        //               width: screenWidth * 0.2,
        //               child: Text('Order'),
        //             ),
        //             Container(
        //               width: screenWidth * 0.2,
        //               child: Text('Order'),
        //             ),
        //             Container(
        //               width: screenWidth * 0.2,
        //               child: Text('Order'),
        //             ),
        //             Container(
        //               width: screenWidth * 0.2,
        //               child: Text('Order'),
        //             ),
        //             Container(
        //               width: screenWidth * 0.2,
        //               child: Text('Order'),
        //             ),
        //             Container(
        //               width: screenWidth * 0.2,
        //               child: Text('Order'),
        //             ),
        //             Container(
        //               width: screenWidth * 0.2,
        //               child: Text('Order'),
        //             ),
        //             Container(
        //               width: screenWidth * 0.2,
        //               child: Text('Action'),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ],
        //   )),
        // ),
        );
  }
}
