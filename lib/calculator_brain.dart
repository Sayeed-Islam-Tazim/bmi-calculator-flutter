import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  CalculatorBrain({@required this.height, @required this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculate_bmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a lot of weight. You need to do some exercises';
    } else if (_bmi >= 18.5) {
      return 'Your body weight is Normal. You are quite fit. Keep it up';
    } else {
      return 'You are Underweight. Ypu need to put some weight on';
    }
  }
}
