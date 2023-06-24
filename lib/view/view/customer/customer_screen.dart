import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:online_course/utils/constants/constants.dart';

import '../../widgets/orderScreen/order_screen_widget.dart';

class CustomerScreen extends StatelessWidget {
  const CustomerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Customer'),
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
                      'Avatar',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  DataColumn(
                    label: Text('Name', style: TextStyle(color: Colors.white)),
                  ),
                  DataColumn(
                    label: Text('Email', style: TextStyle(color: Colors.white)),
                  ),
                  DataColumn(
                    label: Text('Phone No:',
                        style: TextStyle(color: Colors.white)),
                  ),
                  DataColumn(
                    label:
                        Text('Action', style: TextStyle(color: Colors.white)),
                  ),
                ],
                rows: [
                  dataRow(isColor: true, [
                    CircleAvatar(
                      radius: 15,
                    ),
                    Text('hello'),
                    Text('hloo@gmail.com'),
                    Text('00000000'),
                    Row(
                      children: [
                        Icon(Icons.remove_red_eye),
                        Icon(Icons.delete)
                      ],
                    )
                  ]),
                  dataRow(isColor: false, [
                    CircleAvatar(
                      radius: 15,
                    ),
                    Text('hello', style: TextStyle(color: Colors.white)),
                    Text('hloo@gmail.com',
                        style: TextStyle(color: Colors.white)),
                    Text('00000000', style: TextStyle(color: Colors.white)),
                    Row(
                      children: [
                        Icon(Icons.remove_red_eye),
                        Icon(Icons.delete)
                      ],
                    )
                  ])
                ],
              ),
            )
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
