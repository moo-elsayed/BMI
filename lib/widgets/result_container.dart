import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../core/theming/colors.dart';
import '../models/bmi_model.dart';

class ResultContainer extends StatelessWidget {
  const ResultContainer({super.key, required this.bmiModel});

  final BmiModel bmiModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsetsGeometry.only(bottom: 20.h),
        padding: EdgeInsetsGeometry.only(
          right: 24.w,
          left: 24.w,
          top: 24.h,
          bottom: 72.h,
        ),
        decoration: BoxDecoration(
          color: ColorsManager.inActiveItemColor,
          borderRadius: BorderRadiusGeometry.circular(12.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 24.h,
          children: [
            Text(
              bmiModel.healthiness,
              style: GoogleFonts.inter(
                fontSize: 20.sp,
                color: bmiModel.color,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              bmiModel.result.toStringAsFixed(2),
              style: GoogleFonts.inter(
                fontSize: 64.sp,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              bmiModel.message,
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 16.sp,
                color: ColorsManager.color8B8C9E,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
