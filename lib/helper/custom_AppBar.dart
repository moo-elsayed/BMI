import 'package:flutter/material.dart';

import 'constants.dart';

AppBar customAppBar({bool leading = false}) {
  return AppBar(
    leading: leading
        ? Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          )
        : null,
    backgroundColor: Constants.backgroundColor,
    centerTitle: true,
    title: const Text(
      'BMI Calculator',
      style: TextStyle(
          fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
    ),
    elevation: 1,
  );
}
