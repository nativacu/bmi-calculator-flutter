import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class RoundIconButton extends StatelessWidget {
  final Function onButtonPressed;
  final IconData icon;
  const RoundIconButton(
      {super.key, required this.onButtonPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () => {
        onButtonPressed(),
      },
      fillColor: kSecondaryButtonColor,
      shape: const CircleBorder(),
      elevation: 0,
      constraints: const BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0,
      ),
      child: Icon(icon),
    );
  }
}
