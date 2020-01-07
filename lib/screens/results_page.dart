import 'package:bmi_calculator/content.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULA'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: activeColour,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'OVERWIGHT',
                    style: kResultStyle,
                  ),
                  Text(
                    '26.7',
                    style: kBMIStyle,
                  ),
                  Text(
                    'You have a higher than normal body weight. Try to exercise more.',
                    textAlign: TextAlign.center,
                    style: kBodyStyle,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            onPress: () => Navigator.pop(context),
            text: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
