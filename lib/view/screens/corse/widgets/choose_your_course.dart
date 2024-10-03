import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Choose_your_course extends StatelessWidget {
  const Choose_your_course({
    super.key,
    this.BackgroundColor,
    this.labelcolor,
    required this.label,
  });
  final Color? BackgroundColor;
  final Color? labelcolor;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15),
     height: 40.h,
     width: 80.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: BackgroundColor),
      child: Center(
        child: Text(label,
            style: GoogleFonts.dmSans(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: labelcolor,
            )),
      ),
    );
  }
}
