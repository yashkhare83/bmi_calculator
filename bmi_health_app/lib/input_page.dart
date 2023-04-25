// ignore_for_file: library_private_types_in_public_api

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
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.female;
  int height = 180;
  int weight = 74;
  var _currentSliderValue;
  @override
  Widget build(BuildContext context) {
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
                        setState(() {
                          selectedGender = Gender.male;
                        });
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
                        setState(() {
                          selectedGender = Gender.female;
                        });
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
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              activeTrackColor: Colors.white,
                              inactiveTrackColor: Color(0xFF8D8E98),
                              thumbColor: Color(0xFFEB1555),
                              overlayColor: Color(0x14EB1555),
                              thumbShape: RoundSliderThumbShape(
                                enabledThumbRadius: 15.0,
                              ),
                              overlayShape: RoundSliderOverlayShape(
                                overlayRadius: 30.0,
                              ),
                            ),
                            child: Slider(
                                value: height.toDouble(),
                                min: 120.0,
                                max: 220.0,
                                divisions: 10,
                                onChanged: (double newValue) {
                                  setState(() {
                                    height = newValue.round();
                                  });
                                }),
                          ), // Text
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
                      onPress: () {},
                      styleColor: kActiveCardColour,
                      cardChild: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'WEIGHT',
                              style: kLabelTextStyle,
                            ),
                            Text(
                              weight.toString(),
                              style: kNumberTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    RoundIcnButton(
                                      onPressed: () {
                                        setState(() {
                                          weight--;
                                        });
                                      },
                                      icon: FontAwesomeIcons.minus,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                RoundIcnButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  icon: FontAwesomeIcons.plus,
                                ),
                              ],
                            ),
                          ], // <Widget>[]
                        ),
                      ),
                    ),
                  ),
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

class RoundIcnButton extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const RoundIcnButton({required this.icon, required this.onPressed});
  final Function onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 0.0,
      onPressed: onPressed(),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
