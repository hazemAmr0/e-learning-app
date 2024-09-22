import 'package:e_learning/core/utils/appColor.dart';
import 'package:e_learning/view/screens/course_details/widgets/Course_header.dart';
import 'package:e_learning/view/screens/course_details/widgets/buy_bottom_bar.dart';
import 'package:e_learning/view/screens/course_details/widgets/course_over_view_details.dart';
import 'package:e_learning/view/screens/course_details/widgets/lesson_list.dart';
import 'package:flutter/material.dart';

// Main Course Overview Screen Widget
class CourseOverviewScreen extends StatefulWidget {
  const CourseOverviewScreen({super.key});

  @override
  _CourseOverviewScreenState createState() => _CourseOverviewScreenState();
}

class _CourseOverviewScreenState extends State<CourseOverviewScreen> {
  bool _showLessonList = true; // Controls whether the lesson list is visible

  @override
  /// Builds the main course overview screen widget
  ///
  /// This widget displays the course details, lesson list, and a buy now button
  ///
  /// The lesson list is toggled by clicking the arrow in the middle of the screen
  Widget build(BuildContext context) {
    return Scaffold(
      /// The bottom bar with the buy now button
      bottomNavigationBar: const BuyNowBottomBar(
          color: AppColor.lightBlue2,
          buttoncolor: AppColor.brightBlue,
          textcolor: Colors.white),
      /// Sets the background color of the screen to the primary color
      backgroundColor: AppColor.primaryColor,
      /// The main body of the screen with the course details and lesson list
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SafeArea(
            child: Column(
              /// Aligns the children to the start of the column
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Back button to go back to the previous screen
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                /// Course Header
                const CourseHeader(),

                const SizedBox(height: 16),
                /// Course Details
                const CourseDetails(),
                const SizedBox(height: 16),

                /// Arrow in the middle to toggle lesson list
                Center(
                  child: IconButton(
                    icon: Icon(
                      _showLessonList
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                      size: 32,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      setState(() {
                        _showLessonList =
                            !_showLessonList; // Toggle lesson list visibility
                      });
                    },
                  ),
                ),

                /// Show lesson list if _showLessonList is true
                if (_showLessonList) ...[
                  LessonList(),
                  const SizedBox(height: 32),
                ]
              ],
            ),
          ),
        ),
      ),
    );
  }

}
