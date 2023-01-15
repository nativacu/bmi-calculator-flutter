import 'package:bmi_calculator_flutter/custom_card.dart';
import 'package:bmi_calculator_flutter/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

enum Actions { add, remove }

class NumberCard extends StatefulWidget {
  final String label;
  final int startingValue;
  // final Function onChange;

  const NumberCard({
    super.key,
    required this.label,
    required this.startingValue,
    // required this.onChange,
  });
  @override
  State<NumberCard> createState() => _NumberCard();
}

class _NumberCard extends State<NumberCard> {
  int selectedNumber = -1;

  @override
  Widget build(BuildContext context) {
    selectedNumber = selectedNumber < 0 ? widget.startingValue : selectedNumber;

    onChangeValue(Actions action) {
      setState(() {
        if (action == Actions.add) {
          selectedNumber = selectedNumber + 1;
        } else {
          selectedNumber = selectedNumber > 0 ? selectedNumber - 1 : 0;
        }
      });
    }

    return CustomCard(
      cardChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.label.toUpperCase(),
            style: kSecondaryTextStyle,
          ),
          Text(
            selectedNumber.toString(),
            style: kPrimaryTextStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RoundIconButton(
                onButtonPressed: () {
                  onChangeValue(Actions.remove);
                },
                icon: FontAwesomeIcons.minus,
              ),
              const SizedBox(
                width: 20.0,
              ),
              RoundIconButton(
                onButtonPressed: () {
                  onChangeValue(Actions.add);
                },
                icon: FontAwesomeIcons.plus,
              ),
            ],
          )
        ],
      ),
    );
  }
}
