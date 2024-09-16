import 'package:e_learning/core/utils/appColor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class choose_your_course_text extends StatelessWidget {
  const choose_your_course_text({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          children: [
            Text('Choice your course',
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                )),
            const Spacer(),
            Text('see all',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: AppColor.brightBlue,
                )),
          ],
        ),
      ),
    );
  }
}
