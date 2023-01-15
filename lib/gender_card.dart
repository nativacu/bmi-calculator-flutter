import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_card.dart';

const Color secondaryColor = Color(0xFF8D8E98);

class GenderCard extends StatefulWidget {
  final IconData iconName;
  final String displayText;
  const GenderCard(
      {Key? key, required this.iconName, required this.displayText})
      : super(key: key);

  @override
  State<GenderCard> createState() => _GenderCard();
}

class _GenderCard extends State<GenderCard> {
  Color backgroundColor = defaultColor;
  Color contentColor = secondaryColor;

  changeColor() {
    setState(() {
      backgroundColor =
          backgroundColor == defaultColor ? Colors.blue : defaultColor;
      contentColor =
          backgroundColor == defaultColor ? secondaryColor : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: changeColor,
      child: CustomCard(
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
      ),
    );
  }
}
