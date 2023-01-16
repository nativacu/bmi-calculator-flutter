import 'package:flutter/material.dart';

import '../../shared/constants.dart';
import '../../shared/custom_card.dart';

class HeightSlider extends StatefulWidget {
  const HeightSlider({super.key});

  @override
  State<HeightSlider> createState() => _HeightSlider();
}

class _HeightSlider extends State<HeightSlider> {
  int bmiHeight = 140;

  final double minSliderValue = 120.0;
  final double maxSliderValue = 220.0;

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
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              trackShape: const RectangularSliderTrackShape(),
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15.0),
              overlayShape: const RoundSliderOverlayShape(overlayRadius: 30.0),
              thumbColor: kAccentColor,
              activeTrackColor: Colors.white,
              overlayColor: kAccentColor16,
              trackHeight: 2.0,
              inactiveTrackColor: kSecondaryContentColor,
            ),
            child: Slider(
              value: bmiHeight.toDouble(),
              min: minSliderValue,
              max: maxSliderValue,
              onChanged: (double height) {
                setState(() {
                  bmiHeight = height.round();
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
