import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 15.h,
      shadowColor: Colors.black.withValues(alpha: 0.5),
      iconTheme: const IconThemeData(color: Colors.white),
      title: Text(
        'BMI Calculator',
        style: GoogleFonts.inter(
          fontWeight: FontWeight.w600,
          fontSize: 20.sp,
          color: Colors.white,
        ),
      ),
    );
  }
}
