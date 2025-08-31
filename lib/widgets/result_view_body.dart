import 'package:bmi/widgets/result_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/bmi_model.dart';

class ResultViewBody extends StatelessWidget {
  const ResultViewBody({super.key, required this.bmiModel});

  final BmiModel bmiModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Column(
        spacing: 25.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your Result',
            style: GoogleFonts.inter(
              fontSize: 40.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          ResultContainer(bmiModel: bmiModel),
        ],
      ),
    );
  }
}
