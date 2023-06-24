import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:online_course/view/view/AllProduct/all_product.dart';
import 'package:online_course/view/view/category/add_category_screen.dart';
import 'package:online_course/view/view/category/category_screen.dart';
import 'package:online_course/view/view/customer/customer_screen.dart';
import 'package:online_course/view/view/productTax/sample.dart';

import '../../../utils/constants/constants.dart';
import '../AllProduct/add_all_product.dart';
import '../productTax/sam2.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: backgroundColor,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  color: Colors.black,
                )),
          ),
        ],
      ),
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.black,
            ),
          ),
          Container(
            width: double.infinity,
            height: screenHeight * 0.4,
            color: Color.fromARGB(255, 55, 55, 55),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AllProduct(),
                        )),
                    child: Text('⚪    All products',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddAllProduct(),
                        )),
                    child: Text('⚪    Add Products',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoryScreen(),
                        )),
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddCategoryScreen(),
                          )),
                      child: Text('⚪    Add Category',
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Sample(),
                        )),
                    child: Text('⚪    Product TAX',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Sam2(),
                        )),
                    child: Text('⚪    Discount Coupon',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CustomerScreen(),
                        )),
                    child: Text('⚪    All Customers',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
