import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

import '../../../controllers/provider/bottom_controller.dart';
import '../../../utils/constants/constants.dart';
import '../../widgets/home_widget/home_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    final bottomProvider = Provider.of<BottomNavControll>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Icon(
          Icons.person_rounded,
          color: Colors.white,
        ),
        backgroundColor: backgroundColor,
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.arrow_forward_sharp,
              color: Colors.white,
            ),
          ),
        ],
      ),
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
              child: Text(
                'Dashboard',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FourTasksWidget(
                    iconContainerColor: Color.fromRGBO(97, 78, 217, 1),
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                    backgroundColor: Color.fromRGBO(72, 53, 190, 1),
                    icon: Icons.check,
                    iconColor: Color.fromARGB(255, 255, 255, 255),
                    subtitile: '48',
                    title: 'Total Scans',
                  ),
                  FourTasksWidget(
                    iconContainerColor: Color.fromRGBO(68, 208, 124, 1),
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                    backgroundColor: Color.fromRGBO(50, 180, 101, 1),
                    icon: Icons.watch_later_outlined,
                    iconColor: Color.fromARGB(255, 222, 220, 220),
                    subtitile: '12',
                    title: 'Total Sale',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FourTasksWidget(
                    iconContainerColor: Color.fromRGBO(107, 196, 202, 1),
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                    backgroundColor: Color.fromRGBO(36, 175, 185, 1),
                    icon: Icons.bar_chart_rounded,
                    iconColor: Color.fromARGB(255, 255, 255, 255),
                    subtitile: '10',
                    title: 'Ongoing',
                  ),
                  FourTasksWidget(
                    iconContainerColor: Color.fromRGBO(255, 160, 126, 1),
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                    backgroundColor: Color.fromRGBO(255, 124, 78, 1),
                    icon: Icons.cancel_outlined,
                    iconColor: Color.fromARGB(255, 222, 220, 220),
                    subtitile: '16',
                    title: 'Invalided',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
              child: Text(
                'Income Tracking',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: screenHeight * 0.3,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: GraphHomeWidget(
                  weeklySummary: weeklySummary,
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
              child: Text(
                'Attendee',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            sizedBox20,
            Column(
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
              ],
            )
            // Flexible(
            //   child: ListView.separated(
            //       shrinkWrap: true,
            //       physics: NeverScrollableScrollPhysics(),
            //       scrollDirection: Axis.horizontal,
            //       itemBuilder: (context, index) {
            //         return Column(
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //           children: [
            //             Text(
            //               'yujmk,l',
            //               style: TextStyle(
            //                 color: Colors.white,
            //               ),
            //             ),
            //             Text(
            //               'yujmk,l',
            //               style: TextStyle(
            //                 color: Colors.white,
            //               ),
            //             ),
            //             Text(
            //               'yujmk,l',
            //               style: TextStyle(
            //                 color: Colors.white,
            //               ),
            //             ),
            //             Text(
            //               'yujmk,l',
            //               style: TextStyle(
            //                 color: Colors.white,
            //               ),
            //             )
            //           ],
            //         );
            //       },
            //       separatorBuilder: (context, index) {
            //         return Divider(
            //           color: Colors.green,
            //         );
            //       },
            //       itemCount: 5),
            // )
          ],
        ),
      ),
      bottomNavigationBar: BottomWidgetButton(
          screenWidth: screenWidth,
          screenHeight: screenHeight,
          bottomProvider: 0),
    );
  }
}
