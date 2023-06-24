import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_course/view/view/authentication/login_screen.dart';

import '../../../utils/constants/constants.dart';
import '../../widgets/home_widget/home_widget.dart';

class LastOnBoard extends StatelessWidget {
  const LastOnBoard({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.05, right: 20),
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
                      color: Color.fromRGBO(13, 15, 57, 1),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(13, 15, 57, 1),
                          minimumSize:
                              Size(screenWidth * 0.7, screenHeight * 0.07)),
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => BottomNavWidget(),
                        //     ));
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ));
                      },
                      child: Text(
                        "Let's Make a journey",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                        ),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
