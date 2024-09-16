import 'package:e_learning/core/utils/appColor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseInfoSection extends StatelessWidget {
  const CourseInfoSection({super.key});

  @override
  /// Course info section widget
  ///
  /// This widget contains the course image, instructor name, course title, and
  /// course description.
  ///
  /// It is used in the course details screen.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Course category badge
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text('HOT', style: TextStyle(color: Colors.white)),
          ),
          SizedBox(height: 10),
          /// Instructor profile pic and name
          Row(
            //crossAxisAlignment: CrossAxisAlignment.start,
           // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 10),
              /// Profile picture
              CircleAvatar(
                backgroundColor: AppColor.Gray,
                child: Image.asset(
                    'assets/images/profilepic.png'), // Replace with the profile image URL
                radius: 20,
              ),
              SizedBox(width: 10),
              /// Instructor name
              Text('Anny Morriarty',
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )),
            ],
          ),
          SizedBox(height: 10),
          /// Course title
          Text(
            'Comic drawing essential for everyone!',
            style: GoogleFonts.dmSans(
              fontWeight: FontWeight.w500,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }

}
