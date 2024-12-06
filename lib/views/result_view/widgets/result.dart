import 'package:flutter/material.dart';

import '../../../helper/constants.dart';
import '../../../helper/get_color_for_weight_category.dart';
import '../../../helper/get_healthiness.dart';
import '../../../helper/message.dart';

class Result extends StatelessWidget {
  const Result({super.key, required this.result});

  final double result;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        decoration: const ShapeDecoration(
          color: Constants.mainColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              getHealthiness(result: result),
              style: TextStyle(
                color: getColorForWeightCategory(
                    category: getHealthiness(result: result)),
                fontSize: 36,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              result.toStringAsFixed(1),
              style: const TextStyle(color: Colors.white, fontSize: 100),
              textAlign: TextAlign.center,
            ),
            Text(
              getBmiMessage(
                category: getHealthiness(result: result),
              ),
              style: const TextStyle(color: Colors.white, fontSize: 22),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
