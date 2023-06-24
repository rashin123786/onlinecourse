import 'package:flutter/material.dart';

class OrderScreenSlideContainer extends StatelessWidget {
  const OrderScreenSlideContainer({
    super.key,
    required this.screenWidth,
    required this.boxcolor,
    required this.widget,
  });

  final double screenWidth;

  final Color boxcolor;

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth * 0.2,
      height: 60,
      decoration: BoxDecoration(
        color: boxcolor,
      ),
      child: Center(child: widget),
    );
  }
}
