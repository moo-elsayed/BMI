import 'package:bmi/views/home_view/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: const Text('Body Mass Index',
            style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold)),
      ),
      body: const HomeViewBody(),
    );
  }
}
