import 'package:bmi_calculator_flutter/shared/constants.dart';
import 'package:bmi_calculator_flutter/shared/custom_card.dart';
import 'package:flutter/material.dart';

import '../../shared/bottom_button.dart';

const resultTextStyle = TextStyle(
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
  color: Color(0xFF3BD288),
);

const bmiTextStyle = TextStyle(
  fontSize: 100,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

const bodyTextStyle = TextStyle(
  fontSize: 22,
  color: Colors.white,
);

class ResultsPage extends StatelessWidget {
  final double result;

  const ResultsPage({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;

    navigateToHome() {
      Navigator.pop(context);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Text(
                'Your Result',
                style: kPrimaryTextStyle.copyWith(fontSize: 40),
              ),
            ),
            Expanded(
              flex: 5,
              child: CustomCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Normal',
                      style: resultTextStyle,
                    ),
                    Text(
                      result.toString(),
                      style: bmiTextStyle,
                    ),
                    Text(
                      'Your BMI result is low you should eat more',
                      style: bodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              h: h,
              onTap: navigateToHome,
              displayText: 're-calculate your bmi',
            )
          ],
        ),
      ),
      // body: const Text('Results..'),
    );
  }
}
