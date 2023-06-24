import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:online_course/utils/constants/constants.dart';
import 'package:online_course/view/view/order/order_details.dart';
import 'package:online_course/view/widgets/home_widget/home_widget.dart';
import 'package:provider/provider.dart';

import '../../../controllers/provider/bottom_controller.dart';
import '../../widgets/orderScreen/order_screen_widget.dart';

class ScannerScreen extends StatelessWidget {
  const ScannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    final bottomProvider = Provider.of<BottomNavControll>(context);
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: backgroundColor,
        centerTitle: true,
        title: Text('Scanner'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.arrow_forward),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              width: double.infinity,
              height: screenHeight * 0.4,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
            ),
          ),
          Text(
            'Scanner Qr',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomWidgetButton(
          screenHeight: screenHeight,
          screenWidth: screenWidth,
          bottomProvider: 1),
    );
    // return Scaffold(
    //   backgroundColor: backgroundColor,
    //   appBar: AppBar(
    //     centerTitle: true,
    //     title: Text('Orders'),
    //     leading: Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: Container(
    //         decoration: BoxDecoration(
    //             borderRadius: BorderRadius.circular(31),
    //             border: Border.all(color: Colors.white)),
    //         child: Icon(
    //           Icons.person,
    //           color: Colors.white,
    //         ),
    //       ),
    //     ),
    //     backgroundColor: backgroundColor,
    //     actions: [
    //       Padding(
    //         padding: const EdgeInsets.all(8.0),
    //         child: GestureDetector(
    //           onTap: () => Navigator.push(
    //               context,
    //               MaterialPageRoute(
    //                 builder: (context) => OrderDetails(),
    //               )),
    //           child: Icon(
    //             Icons.notifications,
    //           ),
    //         ),
    //       )
    //     ],
    //   ),
    //   body: Padding(
    //     padding: const EdgeInsets.only(top: 15, left: 8, right: 8),
    //     child: ListView(
    //       children: [
    //         Padding(
    //           padding: const EdgeInsets.all(8.0),
    //           child: Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: [
    //               Container(
    //                 width: screenWidth * 0.55,
    //                 height: screenHeight * 0.05,
    //                 decoration: BoxDecoration(
    //                   color: Colors.white,
    //                   borderRadius: new BorderRadius.circular(18.0),
    //                 ),
    //                 child: TextFormField(
    //                   style: TextStyle(fontSize: 15),
    //                   decoration: InputDecoration(
    //                     suffixIcon: Icon(
    //                       Icons.search,
    //                       color: Colors.black,
    //                     ),
    //                     hintText: '   search.......',
    //                     border: InputBorder.none,
    //                   ),
    //                 ),
    //               ),
    //               Container(
    //                 width: screenWidth * 0.3,
    //                 height: screenHeight * 0.05,
    //                 decoration: BoxDecoration(
    //                   color: Colors.white,
    //                   borderRadius: new BorderRadius.circular(18.0),
    //                 ),
    //                 child: TextFormField(
    //                   style: TextStyle(fontSize: 15),
    //                   decoration: InputDecoration(
    //                     hintText: '    Filter',
    //                     border: InputBorder.none,
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //         SizedBox(
    //           height: 20,
    //         ),
    //         SingleChildScrollView(
    //           scrollDirection: Axis.horizontal,
    //           child: DataTable(
    //             columns: [
    //               DataColumn(
    //                 label: Text(
    //                   'Order',
    //                   style: TextStyle(color: Colors.white),
    //                 ),
    //               ),
    //               DataColumn(
    //                 label: Text('Date', style: TextStyle(color: Colors.white)),
    //               ),
    //               DataColumn(
    //                 label: Text('Name', style: TextStyle(color: Colors.white)),
    //               ),
    //               DataColumn(
    //                 label: Text('Price', style: TextStyle(color: Colors.white)),
    //               ),
    //               DataColumn(
    //                 label: Text('Payment Type',
    //                     style: TextStyle(color: Colors.white)),
    //               ),
    //               DataColumn(
    //                 label:
    //                     Text('Reciept', style: TextStyle(color: Colors.white)),
    //               ),
    //               DataColumn(
    //                 label:
    //                     Text('Status', style: TextStyle(color: Colors.white)),
    //               ),
    //               DataColumn(
    //                 label:
    //                     Text('Action', style: TextStyle(color: Colors.white)),
    //               ),
    //             ],
    //             rows: [
    //               dataRow(isColor: true, [
    //                 Text('#22'),
    //                 Text('2/12/2023'),
    //                 Text('hello'),
    //                 Text('22'),
    //                 Text('Card'),
    //                 Icon(Icons.file_download_outlined),
    //                 Card(
    //                   color: Colors.amber,
    //                   child: Text(' pending '),
    //                 ),
    //                 Icon(Icons.remove_red_eye),
    //               ]),
    //               dataRow(isColor: false, [
    //                 Text('#22', style: TextStyle(color: Colors.white)),
    //                 Text('2/12/2023', style: TextStyle(color: Colors.white)),
    //                 Text('hello', style: TextStyle(color: Colors.white)),
    //                 Text('22', style: TextStyle(color: Colors.white)),
    //                 Text('Card', style: TextStyle(color: Colors.white)),
    //                 Icon(
    //                   Icons.file_download_outlined,
    //                   color: Colors.white,
    //                 ),
    //                 Card(
    //                   color: Colors.green,
    //                   child: Text(' Completed ',
    //                       style: TextStyle(color: Colors.white)),
    //                 ),
    //                 Icon(
    //                   Icons.remove_red_eye,
    //                   color: Colors.white,
    //                 ),
    //               ]),
    //             ],
    //           ),
    //         )

    //       ],
    //     ),
    //   ),
    // );
  }
}
