import 'dart:math';
import 'dart:ui';
import 'package:bmi/core/theming/colors.dart';

class BmiModel {
  final String gender;
  final double height;
  final double weight;
  final int age;

  BmiModel({
    required this.gender,
    required this.height,
    required this.weight,
    required this.age,
  });

  double get result => weight / (pow(height / 100, 2));

  String get healthiness {
    String healthinessString;
    if (result < 18.5) {
      healthinessString = 'Underweight';
    } else if (result <= 25) {
      healthinessString = 'Normal';
    } else if (result <= 30) {
      healthinessString = 'Overweight';
    } else if (result <= 35) {
      healthinessString = 'Obese';
    } else {
      healthinessString = 'Extremely Obese';
    }
    return healthinessString;
  }

  String get message {
    switch (healthiness) {
      case 'Underweight':
        return "You are classified as underweight. It might be beneficial to consult a healthcare professional to discuss your diet and overall health.";

      case 'Normal':
        return "You have a normal body weight. Good job! Keep up the healthy lifestyle!";

      case 'Overweight':
        return "You are considered overweight. Making some adjustments to your diet and activity level can help improve your health.";

      case 'Obese':
        return "You are classified as obese. It's important to focus on a healthy lifestyle. Consider seeking guidance from a healthcare provider for support.";

      default:
        return "You are classified as extremely obese. Prioritizing your health is crucial. Please consult a healthcare professional for a tailored plan to help you on your journey.";
    }
  }

  Color get color {
    switch (healthiness) {
      case 'Underweight':
        return ColorsManager.underweight;
      case 'Normal':
        return ColorsManager.normal;
      case 'Overweight':
        return ColorsManager.overweight;
      case 'Obese':
        return ColorsManager.obese;
      default:
        return ColorsManager.extremelyObese;
    }
  }
}
