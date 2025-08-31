import 'package:bmi/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectWeightAndAgeSection extends StatefulWidget {
  const SelectWeightAndAgeSection({
    super.key,
    required this.onChangeAge,
    required this.onChangeWeight,
  });

  final Function(int age) onChangeAge;
  final Function(double weight) onChangeWeight;

  @override
  State<SelectWeightAndAgeSection> createState() =>
      _SelectWeightAndAgeSectionState();
}

class _SelectWeightAndAgeSectionState extends State<SelectWeightAndAgeSection> {
  double weight = 60;
  int age = 26;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10.w,
      children: [
        buildSection(
          text: 'Weight',
          value: weight,
          onDecrement: () {
            if (weight != 1) {
              weight--;
              widget.onChangeWeight(weight);
              setState(() {});
            }
          },
          onIncrement: () {
            weight++;
            widget.onChangeWeight(weight);
            setState(() {});
          },
        ),
        buildSection(
          text: 'Age',
          value: age,
          onDecrement: () {
            if (age != 1) {
              age--;
              widget.onChangeAge(age);
              setState(() {});
            }
          },
          onIncrement: () {
            age++;
            widget.onChangeAge(age);
            setState(() {});
          },
        ),
      ],
    );
  }

  Expanded buildSection({
    required String text,
    required num value,
    required void Function() onIncrement,
    required void Function() onDecrement,
  }) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadiusGeometry.circular(12.r),
          color: ColorsManager.appBarColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 6.h,
          children: [
            Text(
              text,
              style: GoogleFonts.inter(
                fontSize: 20.sp,
                color: ColorsManager.color8B8C9E,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              value.round().toString(),
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 40.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildIconButton(onPressed: onDecrement, icon: Icons.remove),
                buildIconButton(onPressed: onIncrement, icon: Icons.add),
              ],
            ),
          ],
        ),
      ),
    );
  }

  IconButton buildIconButton({
    required void Function() onPressed,
    required IconData icon,
  }) {
    return IconButton(
      onPressed: onPressed,
      style: IconButton.styleFrom(
        backgroundColor: ColorsManager.color8B8C9E,
        foregroundColor: Colors.white,
      ),
      icon: Icon(icon),
    );
  }
}
