import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'custom_card.dart';
import 'gender_options.dart';

const double buttonHeight = 70.0;
const Color buttonColor = Color(0xFFEB1555);

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
        children: [
          // Row(
          //   children: [
          Expanded(
            child: GenderOptions(),
          ),
          Expanded(
            child: CustomCard(),
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
            color: buttonColor,
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
