import 'package:e_learning/core/utils/appColor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LessonItem extends StatelessWidget {
  final String title;
  final String time;
  final bool isCompleted;

  LessonItem({
    required this.title,
    required this.time,
    required this.isCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    size: 20,
                    isCompleted
                        ? Icons.check_circle_outline_sharp
                        : Icons.play_circle_outline_outlined,
                    color: isCompleted ? Colors.black : Colors.black,
                  ),
                  
                  SizedBox(width: 10),
                  Text(
                    title,
                    style: GoogleFonts.dmSans(fontSize: 12),
                  ),
                ],
              ),
              Text(
                time,
                style: GoogleFonts.dmSans(fontSize: 12),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              height: 20, // adjust height as needed
              width: 1.5, // line thickness
              color: AppColor.primaryColor, // line color
            ),
          ),
        ],
      ),
    );
  }
}
