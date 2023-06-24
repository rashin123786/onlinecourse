import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:online_course/controllers/provider/bottom_controller.dart';
import 'package:online_course/utils/constants/constants.dart';
import 'package:online_course/view/view/AttendeList/attende_list_screen.dart';
import 'package:online_course/view/view/Home/home_screen.dart';
import 'package:online_course/view/view/AttendeList/menu_screen.dart';
import 'package:online_course/view/view/order/scanner_screen.dart';
import 'package:provider/provider.dart';

//========BOTTOM NAV WIDGET =========>

class BottomWidgetButton extends StatelessWidget {
  const BottomWidgetButton({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    required this.bottomProvider,
  });

  final double screenWidth;
  final double screenHeight;
  final int bottomProvider;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: screenWidth * 0.05, right: screenWidth * 0.05, bottom: 9),
      child: Container(
        width: double.infinity,
        height: screenHeight * 0.08,
        decoration: BoxDecoration(
            color: Color.fromRGBO(38, 43, 79, 1),
            borderRadius: BorderRadius.circular(35)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            bottomProvider == 0
                ? Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(32, 36, 66, 1),
                        borderRadius: BorderRadius.circular(25)),
                    child: Center(
                      child: Text(
                        'Dashboard',
                        style: bottomProvider == 0
                            ? TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              )
                            : TextStyle(),
                      ),
                    ),
                  )
                : GestureDetector(
                    onTap: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        )),
                    child: Text(
                      'Dashboard',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )),
            bottomProvider == 1
                ? Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(32, 36, 66, 1),
                        borderRadius: BorderRadius.circular(25)),
                    child: Center(
                      child: Text(
                        'Scanner',
                        style: bottomProvider == 1
                            ? TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              )
                            : TextStyle(),
                      ),
                    ),
                  )
                : GestureDetector(
                    onTap: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ScannerScreen(),
                        )),
                    child: Text(
                      'Scanner',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )),
            bottomProvider == 2
                ? Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(32, 36, 66, 1),
                        borderRadius: BorderRadius.circular(25)),
                    child: Center(
                      child: Text(
                        'Attendee List',
                        style: bottomProvider == 2
                            ? TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              )
                            : TextStyle(),
                      ),
                    ),
                  )
                : GestureDetector(
                    onTap: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AttendeeList(),
                        )),
                    child: Text(
                      'Attendee List',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )),
          ],
        ),
      ),
    );
  }
}

//========Four TASK WIDGET =========>

class FourTasksWidget extends StatelessWidget {
  const FourTasksWidget({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.subtitile,
    required this.backgroundColor,
    required this.iconContainerColor,
  });

  final double screenWidth;
  final double screenHeight;
  final IconData icon;
  final Color iconColor;
  final String title;
  final String subtitile;
  final Color backgroundColor;
  final Color iconContainerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth * 0.46,
      height: screenHeight * 0.105,
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: iconContainerColor,
          ),
          width: 35,
          height: 35,
          // color: Color.fromRGBO(111, 111, 111, 190),
          child: Icon(
            icon,
            color: iconColor,
            size: 35,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontStyle: FontStyle.italic,
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            subtitile,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
    );
  }
}

//======== Top Product And Recent Order Widget=======>

class TopProductAndRecentOrderWidget extends StatelessWidget {
  const TopProductAndRecentOrderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Product Name',
              textAlign: TextAlign.start,
              style: homeTableStyle,
            ),
            Text(
              'Quantity',
              textAlign: TextAlign.left,
              style: homeTableStyle,
            ),
            Text(
              'Price',
              textAlign: TextAlign.start,
              style: homeTableStyle,
            ),
            Text(
              'Sold',
              textAlign: TextAlign.start,
              style: homeTableStyle,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              '  ⚪ Mobile',
              textAlign: TextAlign.start,
              style: homeTableStyle,
            ),
            Text(
              '40',
              textAlign: TextAlign.start,
              style: homeTableStyle,
            ),
            Text(
              '200',
              textAlign: TextAlign.center,
              style: homeTableStyle,
            ),
            Card(
              color: Colors.green,
              child: Text(
                '  3  ',
                style: homeTableStyle,
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              '  ⚪ Mobile',
              style: homeTableStyle,
            ),
            Text(
              '40',
              style: homeTableStyle,
            ),
            Text(
              '200',
              style: homeTableStyle,
            ),
            Card(
              color: Colors.green,
              child: Text(
                '  3  ',
                style: homeTableStyle,
              ),
            )
          ],
        ),
      ],
    );
  }
}

//==================Graph Home===========================//
List<double> weeklySummary = [30, 25, 45, 20, 30, 28, 34];

class IndividualBar {
  int? x;
  double? y;
  IndividualBar({
    required this.x,
    required this.y,
  });
}

class BarData {
  double? sunAmount;
  double? monAmount;
  double? tueAmount;
  double? wedAmount;
  double? thurAmount;
  double? friAmount;
  double? satAmount;
  BarData({
    required this.sunAmount,
    required this.monAmount,
    required this.tueAmount,
    required this.wedAmount,
    required this.thurAmount,
    required this.friAmount,
    required this.satAmount,
  });
  List<IndividualBar> barData = [];
  void initializeBarData() {
    barData = [
      IndividualBar(x: 0, y: sunAmount),
      IndividualBar(x: 1, y: monAmount),
      IndividualBar(x: 2, y: tueAmount),
      IndividualBar(x: 3, y: wedAmount),
      IndividualBar(x: 4, y: thurAmount),
      IndividualBar(x: 5, y: friAmount),
      IndividualBar(x: 6, y: satAmount),
    ];
  }
}

class GraphHomeWidget extends StatelessWidget {
  const GraphHomeWidget({super.key, required this.weeklySummary});
  final List weeklySummary;

  @override
  Widget build(BuildContext context) {
    BarData myBarData = BarData(
      sunAmount: weeklySummary[0],
      monAmount: weeklySummary[1],
      tueAmount: weeklySummary[2],
      wedAmount: weeklySummary[3],
      thurAmount: weeklySummary[4],
      friAmount: weeklySummary[5],
      satAmount: weeklySummary[6],
    );
    myBarData.initializeBarData();
    return Container(
      width: double.infinity,
      height: 200,
      //  / decoration: BoxDecoration(color: Colors.amber),
      child: BarChart(
        BarChartData(
          gridData: FlGridData(show: false),
          borderData: FlBorderData(show: false),
          maxY: 60,
          minY: 0,
          titlesData: FlTitlesData(
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              rightTitles:
                  AxisTitles(sideTitles: SideTitles(showTitles: false)),
              bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: getBottomTiles,
              ))),
          barGroups: myBarData.barData
              .map(
                (data) => BarChartGroupData(
                  x: data.x!,
                  barRods: [
                    BarChartRodData(
                        toY: data.y!,
                        color: data.x == 2
                            ? Color.fromRGBO(75, 53, 190, 1)
                            : Color.fromRGBO(229, 229, 234, 1),
                        width: 20,
                        borderRadius: BorderRadius.circular(4)),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

Widget getBottomTiles(double value, TitleMeta meta) {
  Widget text;
  switch (value.toInt()) {
    case 0:
      text = const Text('jan');
      break;
    case 1:
      text = const Text('Feb');
      break;
    case 2:
      text = const Text('Mar');
      break;
    case 3:
      text = const Text('Apr');
      break;
    case 4:
      text = const Text('May');
      break;
    case 5:
      text = const Text('June');
      break;
    case 6:
      text = const Text('July');
      break;
    default:
      text = const Text('');
      break;
  }
  return SideTitleWidget(axisSide: meta.axisSide, child: text);
}
