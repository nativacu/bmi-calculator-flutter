import 'package:flutter/material.dart';

import 'constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton(
      {Key? key,
      required this.h,
      required this.onTap,
      required this.displayText})
      : super(key: key);

  final double h;
  final Function onTap;
  final String displayText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        color: kAccentColor,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: h * 0.09,
        padding: const EdgeInsets.only(bottom: 8),
        child: Center(
          child: Text(
            displayText.toUpperCase(),
            textAlign: TextAlign.center,
            style: kPrimaryTextStyle.copyWith(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
