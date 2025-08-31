import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_gender_item.dart';

class SelectGenderSection extends StatefulWidget {
  const SelectGenderSection({super.key, required this.onChanged});

  final Function(String gender) onChanged;

  @override
  State<SelectGenderSection> createState() => _SelectGenderSectionState();
}

class _SelectGenderSectionState extends State<SelectGenderSection> {
  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10.w,
      children: [
        CustomGenderItem(
          imagePath: 'assets/images/male.png',
          text: 'Male',
          isActive: isMale,
          onTap: () {
            if (!isMale) {
              isMale = !isMale;
              widget.onChanged('Male');
              setState(() {});
            }
          },
        ),
        CustomGenderItem(
          imagePath: 'assets/images/female.png',
          text: 'Female',
          isActive: !isMale,
          onTap: () {
            if (isMale) {
              isMale = !isMale;
              widget.onChanged('Female');
              setState(() {});
            }
          },
        ),
      ],
    );
  }
}
