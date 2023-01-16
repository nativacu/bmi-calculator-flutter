import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'gender_card/gender_card.dart';

enum Gender { male, female }

class GenderOptions extends StatefulWidget {
  const GenderOptions({Key? key}) : super(key: key);

  @override
  State<GenderOptions> createState() => _GenderOptions();
}

class _GenderOptions extends State<GenderOptions> {
  bool isMaleButtonActive = false;
  bool isFemaleButtonActive = false;

  updateButtonStatus(Gender selectedGender) {
    setState(() {
      if (selectedGender == Gender.female) {
        isFemaleButtonActive = true;
        isMaleButtonActive = false;
      } else {
        isFemaleButtonActive = false;
        isMaleButtonActive = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GenderCard(
            iconName: FontAwesomeIcons.mars,
            displayText: "male",
            isActive: isMaleButtonActive,
            onPressed: () => updateButtonStatus(Gender.male),
          ),
        ),
        Expanded(
          child: GenderCard(
            iconName: FontAwesomeIcons.venus,
            displayText: "female",
            isActive: isFemaleButtonActive,
            onPressed: () => updateButtonStatus(Gender.female),
          ),
        ),
      ],
    );
  }
}
