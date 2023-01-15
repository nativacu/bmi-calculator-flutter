import 'package:bmi_calculator_flutter/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'custom_card.dart';
import 'gender_options.dart';

const double buttonHeight = 70.0;

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  //TODO extract Slider to new widget
  int bmiHeight = 180;

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
          Expanded(
            //TODO extract Slider to new widget
            child: CustomCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Height',
                    style: kSecondaryTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        bmiHeight.toString(),
                        style: kPrimaryTextStyle,
                      ),
                      const Text(
                        'cm',
                        style: kSecondaryTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: bmiHeight.toDouble(),
                    min: 120,
                    max: 220,
                    activeColor: kAccentColor,
                    inactiveColor: kSecondaryContentColor,
                    onChanged: (double test) {
                      setState(() {
                        bmiHeight = test.round();
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(),
                ),
                Expanded(
                  child: CustomCard(),
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
