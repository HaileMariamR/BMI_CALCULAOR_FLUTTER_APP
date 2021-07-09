import 'package:flutter/material.dart';
import './screens/Input.dart';

void main() {
  runApp(BMI());
}

class BMI extends StatelessWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InputPage(),
      theme: ThemeData(
        primaryColor: Color(0xFF0A0E21),
        accentColor: Colors.purple,
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: TextTheme(
          // ignore: deprecated_member_use
          body1: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
