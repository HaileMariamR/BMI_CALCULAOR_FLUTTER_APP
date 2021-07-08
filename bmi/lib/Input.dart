import 'package:flutter/material.dart';
import 'ResuseableCard.dart';
import 'IconContent.dart';
import 'constants.dart';

const activecolor = Color(0xFF1D1E33);
const inactiveColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = inactiveColor;
  Color femaleColor = Colors.red;
  int height = 180;
  int weight = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    femaleColor = inactiveColor;
                    (maleColor == inactiveColor)
                        ? (maleColor = activecolor)
                        : femaleColor = inactiveColor;
                  });
                },
                child: ResuseableCard(
                  inputColor: maleColor,
                  cardChild: IconContent(
                    icon: Icons.male,
                    name: "MALE",
                  ),
                ),
              )),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      maleColor = inactiveColor;
                      (femaleColor == inactiveColor)
                          ? (femaleColor = activecolor)
                          : maleColor = inactiveColor;
                    });
                  },
                  child: ResuseableCard(
                    inputColor: femaleColor,
                    cardChild: IconContent(
                      icon: Icons.female,
                      name: "FEMALE",
                    ),
                  ),
                ),
              ),
            ],
          )),
          Expanded(
              child: ResuseableCard(
            inputColor: Color(0xFF1D1E33),
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Height",
                  style: lableTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      "${height}",
                      style: numberTextStyle,
                    ),
                    Text(
                      "cm",
                      style: lableTextStyle,
                    )
                  ],
                ),
                Slider(
                  min: 20,
                  max: 200,
                  activeColor: Colors.pink,
                  inactiveColor: Colors.grey,
                  value: height.toDouble(),
                  onChanged: (double nvalue) {
                    setState(() {
                      height = nvalue.toInt();
                    });
                  },
                )
              ],
            ),
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: ResuseableCard(
                inputColor: Color(0xFF1D1E33),
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Weight",
                      style: lableTextStyle,
                    ),
                    Text(
                      "${weight}",
                      style: numberTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundWidget(
                          roundChild: Icon(Icons.add),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        RoundWidget(
                          roundChild: Icon(Icons.minimize),
                        )
                      ],
                    )
                  ],
                ),
              )),
              Expanded(
                  child: ResuseableCard(
                inputColor: Color(0xFF1D1E33),
              )),
            ],
          )),
          Container(
            height: 50.0,
            width: double.infinity,
            color: Colors.purple,
            margin: EdgeInsets.only(top: 10),
            child: Center(child: Text("Calculate")),
          )
        ],
      ),
    );
  }
}

class RoundWidget extends StatelessWidget {
  RoundWidget({this.roundChild});
  final Widget? roundChild;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      child: roundChild,
      shape: CircleBorder(),
      fillColor: Colors.purple,
      elevation: 5.0,
      constraints: BoxConstraints.tightFor(width: 50, height: 50.0),
    );
  }
}
