import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

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
            style: labelTextStyle, // TextStyle
          ), // Text
        ], // <Widget>[]
      ),
    );
  }
}
