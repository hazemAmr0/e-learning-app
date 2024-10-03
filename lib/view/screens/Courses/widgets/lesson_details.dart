import 'package:e_learning/view/screens/Courses/widgets/lesson_item.dart';
import 'package:e_learning/view/screens/Courses/widgets/sectiomHeader.dart';
import 'package:flutter/material.dart';

class LessonDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeader(
            mainTitle: 'All Lesson of Marketing',
            subTitle: 'Here 52 Lesson and complete 32 lesson',
          ),
          LessonItem(
              isCompleted: true,
              title: 'what is marketing?',
              time: '56 Minutes'),
          LessonItem(
              isCompleted: true,
              title: 'What is your definition of marketing?',
              time: '10 Min'),
          LessonItem(
              isCompleted: true,
              title: 'What are 3 Definitions of marketing?',
              time: '15 Min'),
          LessonItem(
              isCompleted: true,
              title: 'What are the 4 type of marketing',
              time: '56 Min'),
          LessonItem(
              isCompleted: false,
              title: 'What the marketing is important?',
              time: '66 Min'),
          LessonItem(
              isCompleted: false,
              title: 'Why is marketing necessary?',
              time: '56 Min'),
        ],
      ),
    );
  }
}
