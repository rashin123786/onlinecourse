import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:online_course/utils/constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_course/view/view/Home/home_screen.dart';
import 'package:online_course/view/widgets/home_widget/home_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 8, right: 8, bottom: 8),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
                sizedBox20,
                CircleAvatar(
                  radius: 63,
                  backgroundImage: AssetImage(
                    'assets/images/firstboard2.png',
                  ),
                ),
                sizedBox10,
                Text(
                  'Welcome Back!',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
                sizedBox10,
                Text(
                  'This App For Event Organizer',
                  style: GoogleFonts.poppins(
                    color: Color.fromARGB(255, 126, 126, 126),
                  ),
                ),
                sizedBox20,
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      'Input email',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  subtitle: TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                sizedBox20,
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      'Password',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  subtitle: TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      hintText: 'your password',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18, right: 8, top: 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Forgot Password?',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, top: 20),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(13, 15, 57, 1),
                          minimumSize:
                              Size(double.infinity, screenHeight * 0.06)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ));
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
