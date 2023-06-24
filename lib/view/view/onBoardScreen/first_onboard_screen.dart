import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_course/utils/constants/constants.dart';
import 'package:online_course/view/view/onBoardScreen/second_onboared.dart';

import '../../../utils/responsive.dart';

class FirstOnboard extends StatelessWidget {
  const FirstOnboard({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
                top: screenHeight * 0.05, right: 20, bottom: 20),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: screenHeight * 0.4,
                  // color: Colors.amber,
                  child: Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.05),
                    child: Image.asset(
                      'assets/images/firstboard2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Text(
                  '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since ''',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  width: 100,
                  height: 6.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      stops: [
                        0.3,
                        0.10,
                      ],
                      colors: [
                        Color.fromRGBO(13, 15, 57, 1),
                        Colors.white,
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                ),
                sizedBox30,
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(13, 15, 57, 1),
                        minimumSize:
                            Size(screenWidth * 0.7, screenHeight * 0.06)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SecondOnboard(),
                          ));
                    },
                    child: Text(
                      'Next',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    )),
                sizedBox10,
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Color.fromRGBO(246, 228, 246, 1),
                        minimumSize:
                            Size(screenWidth * 0.7, screenHeight * 0.05)),
                    onPressed: () {},
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
