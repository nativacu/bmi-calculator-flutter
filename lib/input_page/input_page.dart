import 'package:bmi_calculator_flutter/input_page/height_slider/height_slider.dart';
import 'package:bmi_calculator_flutter/input_page/number_card/number_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../result_page/result_page.dart';
import '../shared/bottom_button.dart';
import 'gender_options/gender_options.dart';

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

    navigateToResult() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ResultsPage(result: 19),
        ),
      );
    }

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
