import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:online_course/view/view/AllProduct/all_product.dart';
import 'package:online_course/view/view/category/add_category_screen.dart';
import 'package:online_course/view/view/category/category_screen.dart';
import 'package:online_course/view/view/customer/customer_screen.dart';
import 'package:online_course/view/view/productTax/sample.dart';
import 'package:online_course/view/widgets/home_widget/home_widget.dart';
import 'package:provider/provider.dart';

import '../../../controllers/provider/bottom_controller.dart';
import '../../../utils/constants/constants.dart';
import '../AllProduct/add_all_product.dart';
import '../productTax/sam2.dart';

class AttendeeList extends StatelessWidget {
  const AttendeeList({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    final bottomProvider = Provider.of<BottomNavControll>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: backgroundColor,
        centerTitle: true,
        title: Text('Attendee List'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.arrow_forward),
          )
        ],
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 60,
                    height: 30,
                    child: Center(
                      child: Text(
                        'id',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 30,
                    child: Center(
                      child: Text(
                        'Name',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 30,
                    child: Center(
                      child: Text(
                        'Event Booking',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 30,
                    child: Center(
                      child: Text(
                        'Action',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 0.7,
                color: Color.fromRGBO(75, 53, 190, 1),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 60,
                    height: 30,
                    child: Center(
                      child: Text(
                        '#0276',
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 30,
                    child: Center(
                      child: Text(
                        'Arjun Dixit',
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 30,
                    child: Center(
                      child: Text(
                        'Music Event',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 30,
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 0.7,
                color: Color.fromRGBO(75, 53, 190, 1),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 60,
                    height: 30,
                    child: Center(
                      child: Text(
                        '#0276',
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 30,
                    child: Center(
                      child: Text(
                        'Arjun Dixit',
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 30,
                    child: Center(
                      child: Text(
                        'Music Event',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 30,
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )),
      ),
      bottomNavigationBar: BottomWidgetButton(
          screenWidth: screenWidth,
          screenHeight: screenHeight,
          bottomProvider: 2),
    );
  }
}
