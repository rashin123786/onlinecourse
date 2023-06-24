import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:online_course/utils/constants/constants.dart';
import 'package:online_course/view/widgets/orderScreen/order_screen_widget.dart';
import 'package:dotted_border/dotted_border.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
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
        centerTitle: true,
        title: Text('Order Details'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: Color.fromRGBO(111, 217, 60, 1),
                  height: 45,
                  width: 2,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Order 16552633598',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
                Spacer(),
                Container(
                  height: 18,
                  width: 18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Color.fromRGBO(111, 217, 60, 1)),
                  child: Icon(
                    Icons.link,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Container(
                  height: 18,
                  width: 18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Color.fromRGBO(111, 217, 60, 1)),
                  child: Icon(
                    Icons.print_outlined,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Container(
                    height: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Color.fromRGBO(111, 217, 60, 1)),
                    child: Center(
                      child: Text(
                        ' Status : Pending ▽ ',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    )),
              ],
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Item',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Qnt.',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Price',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Total',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Action',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Phone',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '2',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '2000',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '2000',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.delete_outline,
                    color: Colors.red,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardOrderDetailsAndAddProductWidget(
                    heading: 'Shipping Information',
                    isAddProduct: false,
                    screenWidth: screenWidth + 5,
                    screenHeight: screenHeight),
                CardOrderDetailsAndAddProductWidget(
                    isAddProduct: false,
                    heading: 'Billing Information',
                    screenWidth: screenWidth + 6,
                    screenHeight: screenHeight),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  color: Color.fromRGBO(111, 217, 60, 1),
                  height: 40,
                  width: 2,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Extra Information',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Color.fromRGBO(239, 239, 239, 1),
              ),
              child: ListTile(
                title: Text('Grand Total : '),
                trailing: Text('₹100'),
              ),
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: ListTile(
                title: Text('Estimated Tax : '),
                trailing: Text('₹0'),
              ),
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Color.fromRGBO(239, 239, 239, 1),
              ),
              child: ListTile(
                title: Text('Grand Total : '),
                trailing: Text('₹100'),
              ),
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                color: Colors.white,
              ),
              child: ListTile(
                title: Text('Payment Type :'),
                trailing: Text('upi'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardOrderDetailsAndAddProductWidget extends StatelessWidget {
  CardOrderDetailsAndAddProductWidget({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    required this.isAddProduct,
    required this.heading,
  });

  final double screenWidth;
  final double screenHeight;
  bool isAddProduct = false;
  final String heading;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15))),
      width: screenWidth * 0.47,
      height: screenHeight * 0.20,
      child: isAddProduct == false
          ? Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      color: Colors.black),
                  width: double.infinity,
                  height: 30,
                  child: Center(
                    child: Text(
                      heading,
                      style: TextStyle(
                        color: Color.fromARGB(211, 244, 227, 227),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 15,
                  child: ListTile(
                    title: Text(
                      'Name',
                      style:
                          TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      'Tatum',
                      style:
                          TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 15,
                  child: ListTile(
                    title: Text(
                      'company',
                      style:
                          TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      'varchha',
                      style:
                          TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 15,
                  child: ListTile(
                    title: Text(
                      'City',
                      style:
                          TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      'Surat',
                      style:
                          TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 15,
                  child: ListTile(
                    title: Text(
                      'Country',
                      style:
                          TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      'India',
                      style:
                          TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 15,
                  child: ListTile(
                    title: Text(
                      'Postal Code',
                      style:
                          TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      '123456',
                      style:
                          TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 15,
                  child: ListTile(
                    title: Text(
                      'Phone',
                      style:
                          TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      '+91784512963',
                      style:
                          TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            )
          : Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      color: Colors.black),
                  width: double.infinity,
                  height: 20,
                  child: Center(
                    child: Text(
                      heading,
                      style: TextStyle(
                        color: Color.fromARGB(211, 244, 227, 227),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 100,
                    child: DottedBorder(
                      borderType: BorderType.RRect,
                      radius: Radius.circular(20),
                      dashPattern: [10, 10],
                      color: Colors.grey,
                      strokeWidth: 2,
                      child: Center(
                          child: Text(
                        "Click here to Upload\nfiles",
                        textAlign: TextAlign.center,
                      )),
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
