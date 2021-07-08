import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: ResuseableCard(
                inputColor: Color(0xFF1D1E33),
              )),
              Expanded(
                child: ResuseableCard(
                  inputColor: Color(0xFF1D1E33),
                ),
              ),
            ],
          )),
          Expanded(
              child: ResuseableCard(
            inputColor: Color(0xFF1D1E33),
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: ResuseableCard(
                inputColor: Colors.blue,
              )),
              Expanded(
                  child: ResuseableCard(
                inputColor: Color(0xFF1D1E33),
              )),
            ],
          )),
        ],
      ),
    );
  }
}

class ResuseableCard extends StatelessWidget {
  ResuseableCard({required this.inputColor});
  Color inputColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: inputColor,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
