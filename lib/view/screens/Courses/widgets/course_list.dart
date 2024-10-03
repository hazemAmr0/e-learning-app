import 'package:e_learning/view/screens/Courses/widgets/course_card.dart';
import 'package:flutter/material.dart';

class CoursesList extends StatelessWidget {
  @override
  /// Builds the courses list widget
  ///
  /// This widget displays a list of courses
  ///
  /// It is composed of a [Row] widget that contains a list of [CourseCardWidget]s
  ///
  /// Each [CourseCardWidget] is a separate widget that displays the course details
  ///
  /// The [CourseCardWidget]s are arranged horizontally in a row with equal spacing
  ///
  /// @param context The build context of the widget
  /// @return A [Widget] that displays the courses list
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        /// First course card
        CourseCardWidget(
          onTap: () {},
          /// Instructor name
          instructor: 'by: John Doe',
          /// Course title
          title: 'Marketing',
          /// Number of lessons
          lessons: '50 Lesson',
          /// Course price
          price: '\$50',
          /// Course rating
          rating: '4.5',
          /// Course image
          image: 'assets/images/marketingImage.svg',
        ),
        /// Second course card
        CourseCardWidget(
          onTap: () {},
          /// Instructor name
          instructor: 'by: John Doe',
          /// Course title
          title: 'UI/UX Design',
          /// Number of lessons
          lessons: '34 Lesson',
          /// Course price
          price: '\$40',
          /// Course rating
          rating: '4.8',
          /// Course image
          image: 'assets/images/designImage.svg',
        ),
      ],
    );
  }
}
