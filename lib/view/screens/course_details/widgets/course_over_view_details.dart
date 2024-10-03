import 'package:e_learning/core/utils/appColor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key? key}) : super(key: key);

  @override
  /// Displays the course details such as name, price, duration, and number of lessons.
  /// Also displays a short description of the course.
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Course name and price
        Row(
          children: [
            Text('Product Design v1.0',
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black,
                )),
            const Spacer(),
            Text('\$74.00',
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ))
          ],
        ),
         SizedBox(
         height: 5.h,
        ),
        // Course duration and number of lessons
        Row(
          children: [
            Text('6h 14min',
                style: TextStyle(
                  color: AppColor.coolGray,
                  fontSize: 14,
                )),
            SizedBox(
             width: 10.w,
            ),
            Text('24 Lessons',
                style: TextStyle(
                  color: AppColor.coolGray,
                  fontSize: 14,
                )),
          ],
        ),
         SizedBox(
         height: 20.h,
        ),
        // Course description title
        Text('About this course',
            style: GoogleFonts.dmSans(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Colors.black,
            )),
         SizedBox(
         height: 10.h,
        ),
        // Course description
        Text(
          'Learn how to create a product design that will stand out from the crowd.',
          style: GoogleFonts.dmSans(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: AppColor.coolGray,
          ),
        ),
      ],
    );
  }

}
