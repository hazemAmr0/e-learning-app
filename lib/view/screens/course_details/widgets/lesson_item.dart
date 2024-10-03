import 'package:e_learning/core/models/lesson_model.dart';
import 'package:e_learning/core/utils/appColor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LessonItem extends StatelessWidget {
  final Lesson lesson;

  const LessonItem({Key? key, required this.lesson}) : super(key: key);

  @override
  /// Build the widget for the lesson item
  ///
  /// This widget will display the lesson item in the listview
  ///
  /// The widget will display the lesson number, title, duration, and a lock
  /// icon or play button depending on the lesson's status
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          /// The lesson number
          Text(
            lesson.number,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 16),
          /// The lesson title and duration
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// The lesson title
                Text(
                  lesson.title,
                  style: GoogleFonts.dmSans(
                    color: AppColor.coolGray,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                /// The lesson duration
                Text(
                  lesson.duration,
                  style: const TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          /// The lock or play button
          Container(
           height: 40.h,
           width: 40.w,
            decoration: BoxDecoration(
              color: lesson.isLocked ? AppColor.lightBlue : Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: lesson.isLocked
                ? const Icon(Icons.lock, color: Colors.white)
                : const Icon(Icons.play_arrow_rounded,
                    color: Colors.white, size: 30),
          ),
        ],
      ),
    );
  }

}
