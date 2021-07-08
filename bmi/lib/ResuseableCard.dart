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

// void updateColor(int gender) {
//     if (gender == 1) {
//       if (maleColor == inactiveColor) {
//         maleColor = activecolor;
//         femaleColor = inactiveColor;
//       } else {
//         maleColor = inactiveColor;
//       }
//     }
//     if (gender == 2) {
//       if (femaleColor == inactiveColor) {
//         femaleColor = activecolor;
//         maleColor=inactiveColor;
//       } else {
//         femaleColor = inactiveColor;
//       }
//     }
//   }