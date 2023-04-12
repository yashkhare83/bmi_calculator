import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: resuableContainer(
                      styleColor: Color(0xFF1D1E33),
                    ),
                  ),
                  Expanded(
                    child: resuableContainer(
                      styleColor: Color(0xFF1D1E33),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: resuableContainer(
                      styleColor: Color(0xFF1D1E33),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: resuableContainer(
                      styleColor: Color(0xFF1D1E33),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ), // Scaffold
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

class resuableContainer extends StatelessWidget {
  // ignore: non_constant_identifier_names, use_key_in_widget_constructors
  resuableContainer({required this.styleColor});
  Color styleColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: styleColor,
        borderRadius: BorderRadius.circular(10.0),
      ), // BoxDecoration
      height: 200.0,
      width: 170.0,
    );
  }
}
