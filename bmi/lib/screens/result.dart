import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/ResuseableCard.dart';
import '../components/bottombtn.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmiresult, required this.info, required this.resultText});
  final String bmiresult;
  final String resultText;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
            child: Text(
              "your result",
              style: titleStyle,
            ),
          )),
          Expanded(
            flex: 5,
            child: ResuseableCard(
              inputColor: Color(0xFF1D1E33),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "$resultText",
                    style: resultTextstyle,
                  ),
                  Text(
                    "$bmiresult",
                    style: bmiText,
                  ),
                  Text(
                    "$info",
                    textAlign: TextAlign.center,
                    style: bmiAdvice,
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child: BottomBtn(
            nameofbtn: "Re calculate",
            onTap: () {
              Navigator.pop(context);
            },
          ))
        ],
      ),
    );
  }
}
