import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:online_course/utils/constants/constants.dart';

import '../../widgets/orderScreen/order_screen_widget.dart';

class AllProduct extends StatelessWidget {
  const AllProduct({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text('All product'),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(31),
                border: Border.all(color: Colors.white)),
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: backgroundColor,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15, left: 8, right: 8),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: screenWidth * 0.55,
                    height: screenHeight * 0.05,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.circular(18.0),
                    ),
                    child: TextFormField(
                      style: TextStyle(fontSize: 15),
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        hintText: '   search.......',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    width: screenWidth * 0.3,
                    height: screenHeight * 0.05,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.circular(18.0),
                    ),
                    child: TextFormField(
                      style: TextStyle(fontSize: 15),
                      decoration: InputDecoration(
                        hintText: '    Filter',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: [
                  DataColumn(
                    label: Text(
                      'Products',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  DataColumn(
                    label:
                        Text('Category', style: TextStyle(color: Colors.white)),
                  ),
                  DataColumn(
                    label: Text('Price', style: TextStyle(color: Colors.white)),
                  ),
                  DataColumn(
                    label: Text('Qty', style: TextStyle(color: Colors.white)),
                  ),
                  DataColumn(
                    label: Text('Stock', style: TextStyle(color: Colors.white)),
                  ),
                  DataColumn(
                    label: Text('Created At',
                        style: TextStyle(color: Colors.white)),
                  ),
                  DataColumn(
                    label:
                        Text('Action', style: TextStyle(color: Colors.white)),
                  ),
                ],
                rows: [
                  dataRow(isColor: true, [
                    Text('XYZ'),
                    Text('Abc'),
                    Text('300'),
                    Text('22'),
                    Card(
                      color: Colors.green,
                      child: Text('In Stock'),
                    ),
                    Text('2/2/2022'),
                    Row(
                      children: [
                        Icon(Icons.remove_red_eye),
                        Icon(Icons.delete)
                      ],
                    )
                  ]),
                  dataRow(isColor: false, [
                    Text('XYZ', style: TextStyle(color: Colors.white)),
                    Text('Abc', style: TextStyle(color: Colors.white)),
                    Text('300', style: TextStyle(color: Colors.white)),
                    Text('22', style: TextStyle(color: Colors.white)),
                    Card(
                      color: Colors.green,
                      child: Text('In Stock',
                          style: TextStyle(color: Colors.white)),
                    ),
                    Text('2/2/2022', style: TextStyle(color: Colors.white)),
                    Row(
                      children: [
                        Icon(Icons.remove_red_eye),
                        Icon(Icons.delete)
                      ],
                    )
                  ]),
                ],
              ),
            )
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     children: [
            //       OrderScreenSlideContainer(
            //         widget: Text(
            //           'products',
            //           style: TextStyle(
            //             color: Colors.black,
            //           ),
            //         ),
            //         screenWidth: screenWidth,
            //         boxcolor: Colors.white,
            //       ),
            //       OrderScreenSlideContainer(
            //         widget: Text(
            //           'Category',
            //           style: TextStyle(
            //             color: Colors.black,
            //           ),
            //         ),
            //         screenWidth: screenWidth,
            //         boxcolor: Colors.white,
            //       ),
            //       OrderScreenSlideContainer(
            //         widget: Text(
            //           'Price',
            //           style: TextStyle(
            //             color: Colors.black,
            //           ),
            //         ),
            //         screenWidth: screenWidth,
            //         boxcolor: Colors.white,
            //       ),
            //       OrderScreenSlideContainer(
            //         widget: Text(
            //           'Qty',
            //           style: TextStyle(
            //             color: Colors.black,
            //           ),
            //         ),
            //         screenWidth: screenWidth,
            //         boxcolor: Colors.white,
            //       ),
            //       OrderScreenSlideContainer(
            //         widget: Text(
            //           'Stock',
            //           style: TextStyle(
            //             color: Colors.black,
            //           ),
            //         ),
            //         screenWidth: screenWidth,
            //         boxcolor: Colors.white,
            //       ),
            //       OrderScreenSlideContainer(
            //         widget: Text(
            //           'Created At',
            //           style: TextStyle(
            //             color: Colors.black,
            //           ),
            //         ),
            //         screenWidth: screenWidth,
            //         boxcolor: Colors.white,
            //       ),
            //       OrderScreenSlideContainer(
            //         widget: Text(
            //           'Action',
            //           style: TextStyle(
            //             color: Colors.black,
            //           ),
            //         ),
            //         screenWidth: screenWidth,
            //         boxcolor: Colors.white,
            //       ),
            //     ],
            //   ),
            // ),
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     children: [
            //       OrderScreenSlideContainer(
            //         widget: Text(
            //           'XYZ',
            //           style: TextStyle(
            //             color: Colors.white,
            //           ),
            //         ),
            //         screenWidth: screenWidth,
            //         boxcolor: Colors.black,
            //       ),
            //       OrderScreenSlideContainer(
            //         widget: Text(
            //           'Abc',
            //           style: TextStyle(
            //             color: Colors.white,
            //           ),
            //         ),
            //         screenWidth: screenWidth,
            //         boxcolor: Colors.black,
            //       ),
            //       OrderScreenSlideContainer(
            //         widget: Text(
            //           '300',
            //           style: TextStyle(
            //             color: Colors.white,
            //           ),
            //         ),
            //         screenWidth: screenWidth,
            //         boxcolor: Colors.black,
            //       ),
            //       OrderScreenSlideContainer(
            //         widget: Text(
            //           '22',
            //           style: TextStyle(
            //             color: Colors.white,
            //           ),
            //         ),
            //         screenWidth: screenWidth,
            //         boxcolor: Colors.black,
            //       ),
            //       OrderScreenSlideContainer(
            //         widget: Card(
            //           color: Colors.green,
            //           child: Text('In Stock'),
            //         ),
            //         screenWidth: screenWidth * 2,
            //         boxcolor: Colors.black,
            //       ),
            //       OrderScreenSlideContainer(
            //         widget: Icon(
            //           Icons.file_download_outlined,
            //           color: Colors.white,
            //         ),
            //         screenWidth: screenWidth,
            //         boxcolor: Colors.black,
            //       ),
            //       OrderScreenSlideContainer(
            //         widget: Text(
            //           '2/12/2022',
            //           style: TextStyle(color: Colors.white),
            //         ),
            //         screenWidth: screenWidth,
            //         boxcolor: Colors.black,
            //       ),
            //       OrderScreenSlideContainer(
            //         widget: Icon(
            //           Icons.remove_red_eye,
            //           color: Colors.white,
            //         ),
            //         screenWidth: screenWidth,
            //         boxcolor: Colors.black,
            //       ),
            //     ],
            //   ),
            // ),
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     children: [
            //       OrderScreenSlideContainer(
            //         widget: Text(
            //           'XYZ',
            //           style: TextStyle(
            //             color: Colors.black,
            //           ),
            //         ),
            //         screenWidth: screenWidth,
            //         boxcolor: Colors.white,
            //       ),
            //       OrderScreenSlideContainer(
            //         widget: Text(
            //           'Abc',
            //           style: TextStyle(
            //             color: Colors.black,
            //           ),
            //         ),
            //         screenWidth: screenWidth,
            //         boxcolor: Colors.white,
            //       ),
            //       OrderScreenSlideContainer(
            //         widget: Text(
            //           '300',
            //           style: TextStyle(
            //             color: Colors.black,
            //           ),
            //         ),
            //         screenWidth: screenWidth,
            //         boxcolor: Colors.white,
            //       ),
            //       OrderScreenSlideContainer(
            //         widget: Text(
            //           '22',
            //           style: TextStyle(
            //             color: Colors.black,
            //           ),
            //         ),
            //         screenWidth: screenWidth,
            //         boxcolor: Colors.white,
            //       ),
            //       OrderScreenSlideContainer(
            //         widget: Card(
            //           color: Colors.red,
            //           child: Text('Out of Stock'),
            //         ),
            //         screenWidth: screenWidth * 2,
            //         boxcolor: Colors.white,
            //       ),
            //       OrderScreenSlideContainer(
            //         widget: Icon(
            //           Icons.file_download_outlined,
            //           color: Colors.black,
            //         ),
            //         screenWidth: screenWidth,
            //         boxcolor: Colors.white,
            //       ),
            //       OrderScreenSlideContainer(
            //         widget: Text(
            //           '2/12/2022',
            //           style: TextStyle(color: Colors.black),
            //         ),
            //         screenWidth: screenWidth,
            //         boxcolor: Colors.white,
            //       ),
            //       OrderScreenSlideContainer(
            //         widget: Icon(
            //           Icons.remove_red_eye,
            //           color: Colors.black,
            //         ),
            //         screenWidth: screenWidth,
            //         boxcolor: Colors.white,
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  DataRow dataRow(List<Widget> items, {bool isColor = false}) {
    return DataRow(
        color: isColor
            ? MaterialStateProperty.all(Colors.white)
            : MaterialStateProperty.all(Colors.black),
        cells: items.map((e) {
          return DataCell(e);
        }).toList());
  }
}
