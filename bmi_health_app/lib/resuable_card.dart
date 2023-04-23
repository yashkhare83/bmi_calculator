import 'package:flutter/material.dart';

class resuableContainer extends StatelessWidget {
  // ignore: non_constant_identifier_names, use_key_in_widget_constructors
  resuableContainer(
      {required this.styleColor,
      required this.cardChild,
      required this.onPress});
  final Color styleColor;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress(),
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: styleColor,
          borderRadius: BorderRadius.circular(10.0),
        ), // BoxDecoration
        height: 200.0,
        width: 170.0,
      ),
    );
  }
}
