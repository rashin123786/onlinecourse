import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:online_course/utils/constants/constants.dart';

import '../../widgets/orderScreen/order_screen_widget.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Category'),
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
                  ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 24, 130, 28)),
                      onPressed: () {},
                      icon: Icon(Icons.add),
                      label: Text('Add'))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: screenHeight * 0.07,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Category Image'),
                  Text('Category Name'),
                  Text('Action')
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: screenHeight * 0.07,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                  ),
                  Text(
                    'Abc',
                    style: TextStyle(color: Colors.white),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.remove_red_eye,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.delete,
                        color: Colors.white,
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: screenHeight * 0.07,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.black,
                  ),
                  Text(
                    'Abc',
                    style: TextStyle(color: Colors.black),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.remove_red_eye,
                        color: Colors.black,
                      ),
                      Icon(
                        Icons.delete,
                        color: Colors.black,
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
