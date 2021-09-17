import 'package:bmi_calculator/screens/InputPage.dart';
import 'package:flutter/material.dart';

import 'screens/results_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => InputPage(),
        '/result': (context) => ResultPage(),
      },
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff000116),
        scaffoldBackgroundColor: Color(0xff000116),
      ),
      debugShowCheckedModeBanner: false,
      //home: InputPage(),
      initialRoute: '/',
    );
  }
}
