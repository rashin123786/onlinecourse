import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:online_course/utils/constants/constants.dart';
import 'package:online_course/view/view/order/order_details.dart';
import 'package:online_course/view/widgets/allProduct/all_product_widget.dart';

class AddAllProduct extends StatelessWidget {
  const AddAllProduct({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Add Product'),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 112, 112, 112),
                        ),
                        onPressed: () {},
                        child: Text('Cancel')),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      onPressed: () {},
                      child: Text('Save'))
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              width: screenWidth,
              height: screenHeight * 0.49,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12)),
                        color: Colors.black),
                    width: double.infinity,
                    height: 20,
                    child: Center(
                      child: Text(
                        "Main information's",
                        style: TextStyle(
                          color: Color.fromARGB(211, 244, 227, 227),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth * 0.03,
                        right: screenWidth * 0.22,
                        top: 8),
                    child: ProductTileWIdget(
                      leftText: 'Product Name',
                      rightText: 'Product Category',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 3),
                    child: AddProductTextFieldWidget(
                      screenWidth: screenWidth,
                      leftText: '  Enter Name',
                      rightText: '  Select Category',
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          left: screenWidth * 0.03,
                          right: screenWidth * 0.3,
                          top: 9),
                      child: ProductTileWIdget(
                        leftText: 'Price',
                        rightText: 'Selling Price',
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 2),
                    child: AddProductTextFieldWidget(
                      screenWidth: screenWidth,
                      leftText: '  Enter Price',
                      rightText: '  Enter Price',
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          left: screenWidth * 0.03,
                          right: screenWidth * 0.15,
                          top: 8),
                      child: ProductTileWIdget(
                        leftText: 'Attachment',
                        rightText: 'Downloadable Product',
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: screenWidth * 0.45,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: screenWidth * 0.2,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 36, 36, 36),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: screenHeight * 0.05,
                                child: Center(
                                    child: Text(
                                  'Choose Files',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white),
                                )),
                              ),
                              Text(
                                'No File Choose',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: screenWidth * 0.45,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 52, 52, 52)),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: screenWidth * 0.2,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 44, 44, 44),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: screenHeight * 0.05,
                                child: Center(
                                    child: Text(
                                  'Choose Files',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white),
                                )),
                              ),
                              Text(
                                'No File Choose',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth * 0.03,
                        right: screenWidth * 0.14,
                        top: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Stock Quantity',
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                        Text(
                          'SKU',
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                        Text(
                          'Product Tax',
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: screenWidth * 0.3,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: ' ',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Container(
                          width: screenWidth * 0.3,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: '  Enter Sku',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Container(
                          width: screenWidth * 0.3,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: '  Enter Tax',
                              border: InputBorder.none,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              width: screenWidth,
              height: screenHeight * 0.4,
              child: CustomFieldWidget(
                isCheck: false,
                screenWidth: screenWidth,
                heading: 'Custom Field',
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              width: screenWidth,
              height: screenHeight * 0.3,
              child: CustomFieldWidget(
                  isCheck: true,
                  screenWidth: screenWidth,
                  heading: 'Product Description'),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              width: screenWidth,
              height: screenHeight * 0.3,
              child: CustomFieldWidget(
                  isCheck: true,
                  screenWidth: screenWidth,
                  heading: 'Product Specification'),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              width: screenWidth,
              height: screenHeight * 0.3,
              child: CustomFieldWidget(
                  isCheck: true,
                  screenWidth: screenWidth,
                  heading: 'Product Details'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CardOrderDetailsAndAddProductWidget(
                      isAddProduct: true,
                      heading: 'Upload Cover Image',
                      screenWidth: screenWidth,
                      screenHeight: screenHeight),
                  CardOrderDetailsAndAddProductWidget(
                      heading: 'Upload Product Image',
                      isAddProduct: true,
                      screenWidth: screenWidth,
                      screenHeight: screenHeight),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
