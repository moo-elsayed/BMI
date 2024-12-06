import 'package:bmi/views/result_view/widgets/result_view_body.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({super.key, required this.result});

  final double result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: const Text('Result',
            style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold)),
      ),
      body: ResultViewBody(
        result: result,
      ),
    );
  }
}
