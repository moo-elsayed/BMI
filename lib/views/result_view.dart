import 'package:bmi/core/helper/extentions.dart';
import 'package:bmi/models/bmi_model.dart';
import 'package:bmi/widgets/custom_app_bar.dart';
import 'package:bmi/widgets/result_view_body.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key, required this.bmiModel});

  final BmiModel bmiModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: ResultViewBody(bmiModel: bmiModel),
      bottomNavigationBar: CustomButton(
        text: 'Re - Calculate',
        onPressed: () => context.pop(),
      ),
    );
  }
}
