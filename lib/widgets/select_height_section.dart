import 'package:bmi/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectHeightSection extends StatefulWidget {
  const SelectHeightSection({super.key, required this.onChanged});

  final Function(double height) onChanged;

  @override
  State<SelectHeightSection> createState() => _SelectHeightSectionState();
}

class _SelectHeightSectionState extends State<SelectHeightSection> {
  double height = 150;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsManager.inActiveItemColor,
        borderRadius: BorderRadiusGeometry.circular(12.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 6.h,
        children: [
          Text(
            'Height',
            style: GoogleFonts.inter(
              fontSize: 20.sp,
              color: ColorsManager.color8B8C9E,
              fontWeight: FontWeight.w300,
            ),
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: height.round().toString(),
                  style: GoogleFonts.inter(
                    fontSize: 40.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: 'cm',
                  style: GoogleFonts.inter(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Slider(
            min: 100,
            max: 220,
            activeColor: ColorsManager.pink,
            inactiveColor: Colors.white,
            value: height,
            onChanged: (value) {
              height = value;
              widget.onChanged(height);
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
