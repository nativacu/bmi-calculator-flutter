import 'package:flutter/material.dart';

import 'constants.dart';
import 'custom_card.dart';

class HeightSlider extends StatefulWidget {
  const HeightSlider({super.key});

  @override
  State<HeightSlider> createState() => _HeightSlider();
}

class _HeightSlider extends State<HeightSlider> {
  int bmiHeight = 140;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
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
            onChanged: (double height) {
              setState(() {
                bmiHeight = height.round();
              });
            },
          )
        ],
      ),
    );
  }
}
