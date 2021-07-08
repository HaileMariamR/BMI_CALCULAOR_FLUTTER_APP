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
                cardChild: IconContent(
                  icon: Icons.male,
                  name: "MALE",
                ),
              )),
              Expanded(
                child: ResuseableCard(
                  inputColor: Color(0xFF1D1E33),
                  cardChild: IconContent(
                    icon: Icons.female,
                    name: "FEMALE",
                  ),
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

class IconContent extends StatelessWidget {
  IconContent({this.name, required this.icon});
  final String? name;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          name.toString(),
          style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),
        )
      ],
    );
  }
}

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
