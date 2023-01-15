import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_card.dart';

const Color activeCardColor = Color(0xFF1D1E33);
const Color activeContentColor = Colors.white;
const Color inactiveCardColor = Color(0xFF111328);
const Color inactiveContentColor = Color(0xFF8D8E98);

class GenderCard extends StatefulWidget {
  final IconData iconName;
  final String displayText;
  final bool isActive;

  const GenderCard(
      {super.key,
      required this.iconName,
      required this.displayText,
      required this.isActive});

  @override
  State<GenderCard> createState() => _GenderCard();
}

class _GenderCard extends State<GenderCard> {
  Color backgroundColor = inactiveCardColor;
  Color contentColor = inactiveContentColor;

  setColors() {
    setState(() {
      backgroundColor = widget.isActive ? activeCardColor : inactiveCardColor;
      contentColor =
          widget.isActive ? activeContentColor : inactiveContentColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    setColors();
    return CustomCard(
      color: backgroundColor,
      cardChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            widget.iconName,
            size: 80.0,
            color: contentColor,
          ),
          const SizedBox(
            height: 15.0,
          ),
          Text(
            widget.displayText.toUpperCase(),
            style: TextStyle(
              fontSize: 18.0,
              color: contentColor,
            ),
          )
        ],
      ),
    );
  }
}
