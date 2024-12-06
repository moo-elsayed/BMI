import 'package:bmi/helper/constants.dart';
import 'package:bmi/views/home_view/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

import '../../helper/custom_AppBar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backgroundColor,
      appBar: customAppBar(),
      body: const HomeViewBody(),
    );
  }
}
