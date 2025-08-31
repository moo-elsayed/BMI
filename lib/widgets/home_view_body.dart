import 'package:bmi/widgets/select_gender_section.dart';
import 'package:bmi/widgets/select_height_section.dart';
import 'package:bmi/widgets/select_weight_and_age_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({
    super.key,
    required this.onChangeGender,
    required this.onChangeHeight,
    required this.onChangeWeight,
    required this.onChangeAge,
  });

  final Function(String gender) onChangeGender;
  final Function(double height) onChangeHeight;
  final Function(double weight) onChangeWeight;
  final Function(int age) onChangeAge;

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Column(
        spacing: 25.h,
        children: [
          Expanded(
            child: SelectGenderSection(
              onChanged: (gender) => widget.onChangeGender(gender),
            ),
          ),
          Expanded(
            child: SelectHeightSection(
              onChanged: (height) => widget.onChangeHeight(height),
            ),
          ),
          Expanded(
            child: SelectWeightAndAgeSection(
              onChangeAge: (age) => widget.onChangeAge(age),
              onChangeWeight: (weight) => widget.onChangeWeight(weight),
            ),
          ),
        ],
      ),
    );
  }
}
