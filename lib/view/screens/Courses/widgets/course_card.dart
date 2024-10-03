import 'package:e_learning/core/utils/appColor.dart';
import 'package:e_learning/view/screens/Courses/course_videos_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseCardWidget extends StatelessWidget {
  final String title;
  final String lessons;
  final String price;
  final String rating;
  final String image;
  final String instructor;
  Function() onTap;

  CourseCardWidget({
    required this.onTap,
    required this.title,
    required this.lessons,
    required this.price,
    required this.rating,
    required this.image,
    required this.instructor,
  });

  @override
  /// Builds a course card widget.
  ///
  /// This widget is used to display a course in the courses page.
  ///
  /// It displays the course image, title, lessons, price, rating, and instructor.
  ///
  /// The widget is also clickable and navigates to the course videos page.
  ///
  /// The [onTap] parameter is a callback function that is called when the widget is tapped.
  ///
  /// The [title], [lessons], [price], [rating], [image], and [instructor] parameters are strings that are used to display the course information.
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => CourseVideosPage()));
      },
      child: Container(
       width: 153.w,
        decoration: BoxDecoration(
          color: AppColor.brightBlue,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Course image
            Container(
              color: AppColor.primaryColor,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: SvgPicture.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
              child: Row(
                children: [
                  // Course title
                  Text(
                    title,
                    style: GoogleFonts.dmSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  // Course price
                  Text(
                    price,
                    style: GoogleFonts.dmSans(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            // Course instructor
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: Text(
                instructor,
                style: GoogleFonts.dmSans(fontSize: 12, color: Colors.white),
              ),
            ),
            // Divider
            Divider(
              color: Colors.white,
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Course lessons
                Padding(
                  padding: EdgeInsets.only(left: 8, bottom: 8),
                  child: Text(
                    lessons,
                    style: GoogleFonts.poppins(fontSize: 14, color: Colors.white),
                  ),
                ),
                // Course rating
                Padding(
                  padding: EdgeInsets.only(right: 8, bottom: 8),
                  child: Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      SizedBox(width: 4),
                      Text(
                        rating,
                        style: GoogleFonts.poppins(
                            fontSize: 12, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}
