import 'package:flutter/material.dart';

import 'input_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Color(0xffffffff)),
        ),
        // bodyMedium: TextStyle(color: Color(0xffF02E65)),
      ),
      home: InputPage(),
    );
  }
}
