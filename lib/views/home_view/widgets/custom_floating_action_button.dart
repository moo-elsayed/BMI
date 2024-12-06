import 'package:bmi/helper/constants.dart';
import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
    required this.icon,
    this.on,
    required this.heroTag,
  });

  final Icon icon;
  final void Function()? on;
  final String heroTag;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: heroTag,
      onPressed: on,
      backgroundColor: Constants.floatingActionButtonColor,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(100),
        borderSide:  const BorderSide(color: Constants.floatingActionButtonColor),
      ),
      child: icon,
    );
  }
}
