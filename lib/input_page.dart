import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const double buttonHeight = 70.0;
const Color buttonColor = Color(0xFFEB1555);
const Color defaultColor = Color(0xFF1D1E33);

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
            child: Row(
              children: [
                Expanded(
                  child: Card(),
                ),
                Expanded(
                  child: Card(),
                ),
              ],
            ),
          ),
          Expanded(
            child: Card(),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Card(),
                ),
                Expanded(
                  child: Card(),
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

class Card extends StatelessWidget {
  final Color color;

  Card({this.color = defaultColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
    );
  }
}
