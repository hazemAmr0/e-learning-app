import 'package:e_learning/core/utils/appColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavedItemCard extends StatelessWidget {
  final String title;
  final String teacher;
  final String imagePath;
  final String enroll;
  final String rating;

  const SavedItemCard({
    required this.title,
    required this.teacher,
    required this.imagePath,
    required this.enroll,
    required this.rating,
  });

  @override
  /// Builds a card widget to show a saved course.
  ///
  /// The card widget shows the course image, title, teacher, enroll, and rating.
  ///
  /// The [title] parameter is the title of the course.
  ///
  /// The [teacher] parameter is the name of the teacher.
  ///
  /// The [imagePath] parameter is the path to the course image.
  ///
  /// The [enroll] parameter is the number of students enrolled in the course.
  ///
  /// The [rating] parameter is the rating of the course.
  Widget build(BuildContext context) {
    return Card(
      color: AppColor.primaryColor,
      elevation: 0,
      margin: const EdgeInsets.symmetric(vertical: 5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: <Widget>[
            // The course image
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imagePath,
               width: 80.w,
               height: 92.h,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // The course title
                  Text(
                    title,
                    style:  TextStyle(
                      fontSize: 17.28,
                      fontWeight: FontWeight.w500,
                     height: 1.3.h,
                      color: AppColor.darkCharcoal,
                    ),
                  ),
                  const SizedBox(height: 5),
                  // The teacher name
                  Text(
                    teacher,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: AppColor.coolGray,
                    ),
                  ),
                  // The enroll and rating
                  Row(
                    children: <Widget>[
                      const Icon(
                        Icons.person,
                        size: 14,
                        color: AppColor.coolGray,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        enroll,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: AppColor.coolGray,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Icon(
                        Icons.star,
                        size: 14,
                        color: Colors.blue,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        rating,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: AppColor.coolGray,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
