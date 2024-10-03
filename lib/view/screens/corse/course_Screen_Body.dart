
import 'package:e_learning/core/utils/appColor.dart';
import 'package:e_learning/view/screens/corse/widgets/category_section.dart';
import 'package:e_learning/view/screens/corse/widgets/choose_your_course.dart';
import 'package:e_learning/view/screens/corse/widgets/choose_your_course_text.dart';
import 'package:e_learning/view/screens/corse/widgets/custom_app_bar.dart';
import 'package:e_learning/view/screens/corse/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';

import 'widgets/course_card.dart';

class CourseScreenBody extends StatelessWidget {
  const CourseScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //appbar
            const CustomAppBar(),
            const SizedBox(height: 20),
            // Search Bar
            const CustomSearchBar(),
            const SizedBox(height: 20),
            // Categories (Scrollable)
            const CategorySection(),
            const SizedBox(height: 20),
            // Course Filter
            choose_your_course_text(),
            const SizedBox(height: 20),
            // Choose your course
            const Row(
              children: [
                Choose_your_course(
                  label: 'All',
                  labelcolor: Colors.white,
                  BackgroundColor: AppColor.brightBlue,
                ),
                Choose_your_course(
                  label: 'popular',
                  labelcolor: Colors.black,
                  BackgroundColor: Colors.white,
                ),
                Choose_your_course(
                  label: 'New',
                  labelcolor: Colors.black,
                  BackgroundColor: Colors.white,
                ),
              ],
            ),
            const SizedBox(height: 10),

            // Course List
            Expanded(
              child: ListView(
                children: [
                  CourseCard(
                    title: "Product Design v1.0",
                    instructor: "Robertson Connie",
                    price: 190,
                    hours: 16,
                    image: "assets/images/courseimage.png", lessons: '    20', rating: '    4.5',
                  ),
                  // CourseCard(
                  //   title: "Java Development",
                  //   instructor: "Nguyen Shane",
                  //   price: 190,
                  //   hours: 16,
                  //   image: "assets/images/courseimage.png",
                  // ),
                  // CourseCard(
                  //   title: "Visual Design",
                  //   instructor: "Bert Pullman",
                  //   price: 250,
                  //   hours: 14,
                  //   image: "assets/images/courseimage.png",
                  // ),
                  // Add more CourseCard widgets as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
