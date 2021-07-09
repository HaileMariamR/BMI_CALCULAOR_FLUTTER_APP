import 'package:flutter/material.dart';


class BottomBtn extends StatelessWidget {
  BottomBtn({required this.onTap, required this.nameofbtn});
  final Function() onTap;
  final String nameofbtn;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50.0,
        width: double.infinity,
        color: Colors.purple,
        margin: EdgeInsets.only(top: 10),
        child: Center(child: Text("$nameofbtn")),
      ),
    );
  }
}
