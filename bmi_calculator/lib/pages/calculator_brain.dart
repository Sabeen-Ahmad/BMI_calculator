import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({
    required this.height,
    required this.weight,
  });

  final int height;
  final int weight;

  double? bmi;

  String? calculateBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi?.toStringAsFixed(1);//decides how many digits can be shown after decimal
  }

  String getResult() {
    if (bmi == null) {
      calculateBMI();
    }
    if (bmi! >= 25) {
      return 'Overweight';
    } else if (bmi! > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (bmi == null) {
      calculateBMI();
    }
    if (bmi! >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (bmi! > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
