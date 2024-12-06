import 'package:bmi/helper/constants.dart';
import 'package:bmi/helper/custom_AppBar.dart';
import 'package:bmi/views/result_view/widgets/result_view_body.dart';
import 'package:flutter/material.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key, required this.result});

  final double result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backgroundColor,
      appBar: customAppBar(leading: true),
      body: ResultViewBody(
        result: result,
      ),
    );
  }
}
