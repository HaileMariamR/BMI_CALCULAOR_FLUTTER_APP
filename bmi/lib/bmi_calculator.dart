import 'dart:math';

class BMIcalculator {
  BMIcalculator({required this.weight, required this.height});
  final int weight;
  final int height;
  double? _bmi;

  String calculate_bmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 25.0) {
      return "Over weight";
    } else if (_bmi! >= 18.5) {
      return "Normal";
    } else {
      return "Under Weight";
    }
  }

  String getInfo() {
    if (_bmi! >= 25.0) {
      return "You have a higher than normal body weight, try to exericse more!";
    } else if (_bmi! >= 18.5) {
      return "You have  a normal body weight. good job";
    } else {
      return "you have a lower than normal body weight,please, try to eat a bit more.";
    }
  }
}
