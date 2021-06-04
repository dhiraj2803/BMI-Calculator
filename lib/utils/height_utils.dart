import 'package:flutter/material.dart';
import 'constant.dart';

class Scale extends StatelessWidget {
  Scale({required this.width});
  double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: width,
      decoration: BoxDecoration(
        color: kGrey,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          // color: kGrey,
        ),
      ),
    );
  }
}
