import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './resuable_card.dart';
import './icon_content.dart';
import './constants.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.female;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    var _currentSliderValue;
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: resuableContainer(
                      onPress: () {
                        selectedGender = Gender.male;
                      },
                      styleColor: selectedGender == Gender.male
                          ? kActiveCardColour
                          : kInactiveCardColour,
                      cardChild: resuableIcons(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ), // Column
                    ),
                  ),
                  Expanded(
                    child: resuableContainer(
                      onPress: () {
                        selectedGender = Gender.female;
                      },
                      styleColor: selectedGender == Gender.female
                          ? kActiveCardColour
                          : kInactiveCardColour,
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
                      onPress: () {},
                      styleColor: kActiveCardColour,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          // SizedBox
                          Text(
                            'HEIGHT',
                            style: kLabelTextStyle, // TextStyle
                          ),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  height.toString(),
                                  style: kNumberTextStyle, // TextStyle
                                ),
                                Text(
                                  'CM',
                                  style: kLabelTextStyle, // TextStyle
                                ),
                              ],
                            ),
                            // Slider Starts from here
                          ),
                          Slider(
                              value: height.toDouble(),
                              min: 120.0,
                              max: 220.0,
                              activeColor: Color(0xFFEB1555),
                              inactiveColor: Color(0xFF8D8E98),
                              divisions: 5,
                              onChanged: (double newValue) {
                                setState(() {
                                  height = newValue.round();
                                });
                              }), // Text
                        ], // <Widget>[]
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
                      onPress: () {
                        selectedGender = Gender.male;
                      },
                      styleColor: kActiveCardColour,
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
