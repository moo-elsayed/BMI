import 'package:flutter/material.dart';

Color getColorForWeightCategory({required String category}) {
  switch (category) {
    case 'Underweight':
      return Colors.blue; // Example color for underweight
    case 'Normal':
      return Colors.green; // Example color for normal weight
    case 'Overweight':
      return Colors.yellow; // Example color for overweight
    case 'Obese':
      return Colors.orange; // Example color for obese
    default:
      return Colors.red; // Default color for extremely obese
  }
}
