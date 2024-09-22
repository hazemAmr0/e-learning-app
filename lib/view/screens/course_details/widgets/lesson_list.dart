import 'package:e_learning/core/models/lesson_model.dart';
import 'package:e_learning/view/screens/course_details/widgets/lesson_item.dart';
import 'package:flutter/material.dart';

class LessonList extends StatelessWidget {
  final List<Lesson> lessons = [
    Lesson(
        number: '01',
        title: 'Welcome to the Course',
        duration: '6:10 mins',
        isLocked: false),
    Lesson(
        number: '02',
        title: 'Process overview',
        duration: '6:10 mins',
        isLocked: false),
    Lesson(
        number: '03',
        title: 'Discovery',
        duration: '6:10 mins',
        isLocked: true),
    Lesson(
        number: '04',
        title: 'Process overview',
        duration: '6:10 mins',
        isLocked: false),
    Lesson(
        number: '05',
        title: 'Process overview',
        duration: '6:10 mins',
        isLocked: false),
    Lesson(
        number: '06',
        title: 'Process overview',
        duration: '6:10 mins',
        isLocked: false),
    Lesson(
        number: '07',
        title: 'Process overview',
        duration: '6:10 mins',
        isLocked: false),
  ];

   LessonList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: lessons.map((lesson) => LessonItem(lesson: lesson)).toList(),
    );
  }
}
