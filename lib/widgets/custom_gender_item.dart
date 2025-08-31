import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../core/theming/colors.dart';

class CustomGenderItem extends StatelessWidget {
  const CustomGenderItem({
    super.key,
    required this.imagePath,
    required this.text,
    required this.isActive,
    required this.onTap,
  });

  final String imagePath;
  final String text;
  final bool isActive;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 12.w),
          decoration: BoxDecoration(
            color: isActive
                ? ColorsManager.appBarColor
                : ColorsManager.inActiveItemColor,
            borderRadius: BorderRadiusGeometry.circular(12.r),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 12.h,
            children: [
              Image.asset(
                imagePath,
                fit: BoxFit.scaleDown,
                height: 144.h,
                width: 144.w,
              ),
              Text(
                text,
                style: GoogleFonts.inter(
                  fontSize: 20.sp,
                  color: ColorsManager.color8B8C9E,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
