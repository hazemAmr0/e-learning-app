import 'package:e_learning/view/screens/course_details/widgets/BestsellerBadge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseHeader extends StatelessWidget {
  const CourseHeader({super.key});

  @override
  /// Course header widget with bestseller badge and course title
  /// Also includes SVG image on the right side
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Column with bestseller badge, course title and some space between
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Bestseller badge widget
            BestsellerBadge(),
            const SizedBox(height: 16),
            /// Course title with bold font and large size
            Text('Product\nDesign v1.0',
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                )),
          ],
        ),
        const Spacer(),
        /// SVG image on the right side of the course header
        SvgPicture.asset(
          'assets/images/Group.svg',
          height: 200,
        ),
      ],
    );
  }
}
