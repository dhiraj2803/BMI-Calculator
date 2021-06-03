import 'package:bmi_calculator/screens/InputScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme:ThemeData.light(),
      debugShowCheckedModeBanner: false ,
      home: InputScreen(),
    );
  }
}