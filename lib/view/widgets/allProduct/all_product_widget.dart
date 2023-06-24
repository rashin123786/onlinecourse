import 'package:flutter/material.dart';

class AddProductTextFieldWidget extends StatelessWidget {
  const AddProductTextFieldWidget({
    super.key,
    required this.screenWidth,
    required this.leftText,
    required this.rightText,
  });

  final double screenWidth;
  final String leftText;
  final String rightText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: screenWidth * 0.45,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: new BorderRadius.circular(10.0),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: leftText,
              border: InputBorder.none,
            ),
          ),
        ),
        Container(
          width: screenWidth * 0.45,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: new BorderRadius.circular(10.0),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: rightText,
              border: InputBorder.none,
            ),
          ),
        )
      ],
    );
  }
}

class ProductTileWIdget extends StatelessWidget {
  const ProductTileWIdget({
    super.key,
    required this.leftText,
    required this.rightText,
  });
  final String leftText;
  final String rightText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leftText,
          style: TextStyle(color: Colors.black, fontSize: 12),
        ),
        Text(
          rightText,
          style: TextStyle(color: Colors.black, fontSize: 12),
        )
      ],
    );
  }
}

//========== custom Field Widget================>

class CustomFieldWidget extends StatelessWidget {
  CustomFieldWidget(
      {super.key,
      required this.screenWidth,
      required this.heading,
      required this.isCheck});

  final double screenWidth;
  final String heading;
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return !isCheck
        ? Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                    color: Colors.black),
                width: double.infinity,
                height: 20,
                child: Center(
                  child: Text(
                    heading,
                    style: TextStyle(
                      color: Color.fromARGB(211, 244, 227, 227),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth * 0.01,
                    right: screenWidth * 0.25,
                    top: 8),
                child: ProductTileWIdget(
                    leftText: 'Custom Field', rightText: 'Custom Value'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AddProductTextFieldWidget(
                    screenWidth: screenWidth, leftText: '', rightText: ''),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth * 0.01,
                    right: screenWidth * 0.25,
                    top: 8),
                child: ProductTileWIdget(
                    leftText: 'Custom Field', rightText: 'Custom Value'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AddProductTextFieldWidget(
                    screenWidth: screenWidth, leftText: '', rightText: ''),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth * 0.01,
                    right: screenWidth * 0.25,
                    top: 8),
                child: ProductTileWIdget(
                    leftText: 'Custom Field', rightText: 'Custom Value'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AddProductTextFieldWidget(
                    screenWidth: screenWidth, leftText: '', rightText: ''),
              ),
            ],
          )
        : Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                    color: Colors.black),
                width: double.infinity,
                height: 20,
                child: Center(
                  child: Text(
                    heading,
                    style: TextStyle(
                      color: Color.fromARGB(211, 244, 227, 227),
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: TextFormField(
                textAlign: TextAlign.center,
                maxLines: null,
                expands: true,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    hintStyle: TextStyle(),
                    hintText: 'Test Area',
                    border: InputBorder.none),
              ))
            ],
          );
  }
}
