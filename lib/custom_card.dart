import 'package:flutter/cupertino.dart';

const Color defaultColor = Color(0xFF1D1E33);

class CustomCard extends StatelessWidget {
  final Color color;
  Widget? cardChild;

  CustomCard({this.color = defaultColor, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: cardChild,
    );
  }
}
