import 'package:flutter/cupertino.dart';

import 'constants.dart';

class CustomCard extends StatelessWidget {
  final Color color;
  Widget? cardChild;
  Function? onPressed;

  CustomCard(
      {super.key,
      this.color = kDefaultCardColor,
      this.cardChild,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    Widget content = Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: cardChild,
    );

    return onPressed != null
        ? GestureDetector(
            child: content,
            onTap: () {
              onPressed!();
            },
          )
        : content;
  }
}
