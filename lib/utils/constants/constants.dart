import 'package:flutter/material.dart';

const backgroundColor = Color.fromARGB(15, 0, 0, 0);
TextStyle homeTableStyle = TextStyle(
  color: Colors.white,
);

List<String> orderItems = [
  "Order",
  "Date",
  "Name",
  "Price",
  "Payment Type",
  "Reciept",
  "Status",
  "Action",
];
// List<Widget> listsWidget = [
//   Text('#22'),
//   Text("2/12/2022"),
//   Text("hello"),
//   Text("22"),
//   Text("card"),
//   Icon(Icons.file_download_outlined),
//   Card(
//     child: Text(' Complete '),
//     color: Colors.green,
//   ),
//   Icon(Icons.remove_red_eye),
// ];

DataRow dataRow(List<Widget> items, {bool isColor = false}) {
  return DataRow(
      color: isColor
          ? MaterialStateProperty.all(Colors.black)
          : MaterialStateProperty.all(Colors.black),
      cells: items.map((e) {
        return DataCell(e);
      }).toList());
}

TextStyle shippingInformationStyle = TextStyle();

const sizedBox10 = SizedBox(
  height: 10,
);
const sizedBox20 = SizedBox(
  height: 20,
);
const sizedBox30 = SizedBox(
  height: 30,
);
