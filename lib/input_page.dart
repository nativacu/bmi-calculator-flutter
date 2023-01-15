import 'package:bmi_calculator_flutter/constants.dart';
import 'package:bmi_calculator_flutter/height_slider.dart';
import 'package:bmi_calculator_flutter/number_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'gender_options.dart';

const double buttonHeight = 70.0;

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Row(
          //   children: [
          const Expanded(
            child: GenderOptions(),
          ),
          const Expanded(
            child: HeightSlider(),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Expanded(
                  child: NumberCard(
                    label: 'weight',
                    startingValue: 74,
                  ),
                ),
                Expanded(
                  child: NumberCard(
                    label: 'age',
                    startingValue: 19,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kAccentColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: h * 0.09,
          )
          //   ],
          // ),
        ],
      ),
    );
  }
}
