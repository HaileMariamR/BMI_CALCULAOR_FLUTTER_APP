import 'package:flutter/material.dart';
import '../components/ResuseableCard.dart';
import '../components/IconContent.dart';
import '../constants.dart';
import './result.dart';
import '../components/bottombtn.dart';
import 'package:bmi/bmi_calculator.dart';

const activecolor = Color(0xFF1D1E33);
const inactiveColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = inactiveColor;
  Color femaleColor = inactiveColor;
  int height = 180;
  int weight = 100;
  int age = 50;

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
                        RoundIconBtn(
                          onPressed: () {
                            setState(() {
                              weight++;
                            });
                          },
                          iconData: Icons.add,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        RoundIconBtn(
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                            iconData: Icons.minimize)
                      ],
                    )
                  ],
                ),
              )),
              Expanded(
                  child: ResuseableCard(
                inputColor: Color(0xFF1D1E33),
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Age",
                      style: lableTextStyle,
                    ),
                    Text(
                      "${age}",
                      style: numberTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconBtn(
                            iconData: Icons.add,
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            }),
                        SizedBox(
                          width: 10,
                        ),
                        RoundIconBtn(
                            iconData: Icons.minimize,
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            })
                      ],
                    )
                  ],
                ),
              )),
            ],
          )),
          BottomBtn(
            nameofbtn: "Calculate",
            onTap: () {
              BMIcalculator bmicalc =
                  BMIcalculator(weight: weight, height: height);

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultPage(
                            bmiresult: bmicalc.calculate_bmi(),
                            resultText: bmicalc.getResult(),
                            info: bmicalc.getInfo(),
                          )));
            },
          )
        ],
      ),
    );
  }
}

class RoundIconBtn extends StatelessWidget {
  const RoundIconBtn({required this.onPressed, required this.iconData});
  final Function() onPressed;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        iconData,
        size: 25,
      ),
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(width: 50, height: 50),
      shape: CircleBorder(),
      fillColor: Colors.purple,
    );
  }
}
