import 'package:e_learning/core/utils/appColor.dart';
import 'package:e_learning/view/screens/Courses/widgets/course_list.dart';
import 'package:e_learning/view/screens/Courses/widgets/header.dart';
import 'package:e_learning/view/screens/Courses/widgets/lesson_details.dart';
import 'package:e_learning/view/screens/Courses/widgets/selectors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';


class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  /// Builds the main courses screen widget
  ///
  /// This widget displays the list of courses and a lesson details
  ///
  /// It is composed of several widgets:
  ///
  /// - [Header] widget as the topbar with a menu and notification icons
  /// - [Selectors] widget to select the type of course to display
  /// - [CoursesList] widget to display the list of courses
  /// - [LessonDetail] widget to display the details of a lesson
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Topbar with menu and notification icons
              Container(
                height: 150,
                margin: EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      // Header with menu and notification icons
                      Header(
                        iconRight: Icon(IconlyLight.notification),
                        onPressed: () {
                          print('menu');
                        },
                        onPressed2: () {
                          print('Notification');
                        },
                        iconLeft: Icon(Icons.menu),
                      ),
                      SizedBox(height: 10),
                      // Selectors widget to select the type of course to display
                      Selectors(),
                    ],
                  ),
                ),
              ),
              // Container with a dark blue color
              Container(
                color: AppColor.primaryColor,
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    // Courses list widget to display the list of courses
                    CoursesList(),
                    SizedBox(height: 15),
                    // Lesson detail widget to display the details of a lesson
                    LessonDetail(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}















class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(Icons.home, color: AppColor.brightBlue),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.book, color: Colors.grey),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.chat, color: Colors.grey),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.person, color: Colors.grey),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
