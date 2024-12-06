import 'package:flutter/material.dart';
import 'constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.label,
  });

  final void Function() onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
        side: BorderSide(color: Constants.secondColor),
      ),
      padding: const EdgeInsets.all(4),
      color: Constants.secondColor,
      minWidth: double.infinity,
      child: Text(
        label,
        style: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 26, color: Colors.white),
      ),
    );
  }
}
