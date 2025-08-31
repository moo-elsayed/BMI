import 'package:bmi/core/helper/extentions.dart';
import 'package:bmi/core/routing/routes.dart';
import 'package:bmi/models/bmi_model.dart';
import 'package:bmi/widgets/custom_button.dart';
import 'package:bmi/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String gender = 'Male';
  double height = 150;
  double weight = 60;
  int age = 26;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: HomeViewBody(
        onChangeGender: (gender) => this.gender = gender,
        onChangeHeight: (height) => this.height = height,
        onChangeWeight: (weight) => this.weight = weight,
        onChangeAge: (age) => this.age = age,
      ),
      bottomNavigationBar: CustomButton(
        text: 'Calculate',
        onPressed: () {
          context.pushNamed(
            Routes.resultView,
            arguments: BmiModel(
              gender: gender,
              height: height,
              weight: weight,
              age: age,
            ),
          );
        },
      ),
    );
  }
}
