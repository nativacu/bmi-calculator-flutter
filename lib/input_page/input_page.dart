import 'package:bmi_calculator_flutter/calculator_service.dart';
import 'package:bmi_calculator_flutter/input_page/height_slider/height_slider.dart';
import 'package:bmi_calculator_flutter/input_page/number_card/number_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../result_page/result_page.dart';
import '../shared/bottom_button.dart';
import 'gender_options/gender_options.dart';

const double buttonHeight = 70.0;
const int startingWeight = 74;
const int startingHeight = 140;

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int bmiHeight = startingHeight;
  int bmiWeight = startingWeight;

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;

    navigateToResult() {
      CalculatorService calculatorService =
          CalculatorService(height: bmiHeight, weight: bmiWeight);

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultsPage(
            result: calculatorService.calculateBMI(),
            resultText: calculatorService.getResult(),
            resultInterpretation: calculatorService.getInterpretation(),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Row(
          //   children: [
          const Expanded(
            child: GenderOptions(),
          ),
          Expanded(child: HeightSlider(
            onChange: (height) {
              setState(() {
                bmiHeight = height;
              });
            },
          )),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: NumberCard(
                      label: 'weight',
                      startingValue: startingWeight,
                      onChange: (int weight) {
                        setState(() {
                          bmiWeight = weight;
                        });
                      }),
                ),
                const Expanded(
                  child: NumberCard(
                    label: 'age',
                    startingValue: 19,
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            h: h,
            onTap: navigateToResult,
            displayText: 'calculate bmi',
          )
          //   ],
          // ),
        ],
      ),
    );
  }
}
