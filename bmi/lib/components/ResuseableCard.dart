import 'package:flutter/material.dart';

class ResuseableCard extends StatelessWidget {
  ResuseableCard({required this.inputColor, this.cardChild});
  final Color inputColor;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: inputColor,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
