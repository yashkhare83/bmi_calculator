import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './resuable_card.dart';
import './icon_content.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomContainerColour = Color(0xFFEB1555);

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
                    child: GestureDetector(
                      onTap: () {},
                      child: resuableContainer(
                        styleColor: activeCardColour,
                        cardChild: resuableIcons(
                          icon: FontAwesomeIcons.mars,
                          label: 'MALE',
                        ), // Column
                      ),
                    ),
                  ),
                  Expanded(
                    child: resuableContainer(
                      styleColor: activeCardColour,
                      cardChild: resuableIcons(
                        icon: FontAwesomeIcons.mars,
                        label: 'FEMALE',
                      ), // Colum ),
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
                      styleColor: activeCardColour,
                      cardChild: Center(
                        child: Column(
                          children: <Widget>[
                            IconButton(
                              onPressed: () {},
                              icon: Icon(FontAwesomeIcons.mars),
                              iconSize: 80.0,
                              color: Colors.white,
                              //cart+ icon from FontAwesome
                            ), // Icon
                            SizedBox(
                              height: 15.0,
                            ), // SizedBox
                            Text(
                              'MALE',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Color(0xFF8D8E98),
                              ), // TextStyle
                            ) // Text
                          ], // <Widget>[]
                        ),
                      ),
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
                      styleColor: activeCardColour,
                      cardChild: Center(
                        child: Column(
                          children: <Widget>[
                            IconButton(
                              onPressed: () {},
                              icon: Icon(FontAwesomeIcons.mars),
                              iconSize: 80.0,
                              color: Colors.white,
                              //cart+ icon from FontAwesome
                            ), // Icon
                            SizedBox(
                              height: 15.0,
                            ), // SizedBox
                            Text(
                              'MALE',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Color(0xFF8D8E98),
                              ), // TextStyle
                            ) // Text
                          ], // <Widget>[]
                        ),
                      ),
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
