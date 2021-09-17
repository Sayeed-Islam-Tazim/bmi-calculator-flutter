import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.button_text});

  final Function onTap;
  final String button_text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
          button_text,
          style: kLargeButtonTextStyle,
        )),
        color: kBottomContainerColour,
        width: double.infinity,
        height: kBottomContainerHeight,
        margin: EdgeInsets.symmetric(horizontal: 15),
        padding: EdgeInsets.only(bottom: 20),
      ),
    );
  }
}
