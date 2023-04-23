import 'package:flutter/material.dart';

import 'constants.dart';

class resuableIcons extends StatelessWidget {
  const resuableIcons({required this.icon, required this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(icon),
            iconSize: 80.0,
            color: Colors.white,
            //cart+ icon from FontAwesome
          ), // Icon
          SizedBox(
            height: 15.0,
          ), // SizedBox
          Text(
            label,
            style: kLabelTextStyle, // TextStyle
          ), // Text
        ], // <Widget>[]
      ),
    );
  }
}
