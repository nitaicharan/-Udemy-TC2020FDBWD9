import 'package:flutter/material.dart';
import 'package:bmi_calculator/content.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onPress, @required this.text});
  final Function onPress;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onPress,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: kButtonStyle),
        ),
        color: kBottomColor,
        padding: EdgeInsets.only(bottom: 20.0),
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomHeight,
      ),
    );
  }
}
