import 'package:e_learning/core/utils/appColor.dart';
import 'package:e_learning/view/screens/my_save_course/widgets/add_more_button.dart';
import 'package:e_learning/view/screens/my_save_course/widgets/saved_item_card.dart';
import 'package:flutter/material.dart';

class SavedListScreen extends StatelessWidget {
  const SavedListScreen({super.key});

  @override
  /// Builds the main widget for the saved list screen
  ///
  /// This screen displays a list of saved courses for the user
  ///
  /// The courses are displayed in a vertical list with the following details:
  ///
  /// - Course title
  /// - Teacher name
  /// - Course image
  /// - Enrollment count
  /// - Rating
  ///
  /// At the bottom of the screen, there is a button to add more courses
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Set the background color of the screen to the primary color
      backgroundColor: AppColor.primaryColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            /// The title of the screen
            const Padding(
              padding: EdgeInsets.only(top: 30.0, bottom: 15.0),
              child: Text(
                'My save list',
                style: TextStyle(
                  fontSize: 29.86,
                  fontWeight: FontWeight.w500,
                  height: 1.3,
                  color: AppColor.darkCharcoal,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            /// The list of saved courses
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: ListView(
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                children: const <Widget>[
                      SavedItemCard(
                    title: 'Adobe Illustrator for all\nBeginner Artists',
                    teacher: 'Samuel Doe',
                    imagePath: 'assets/images/courseimage.png',
                    enroll: '4k students',
                    rating: '4.7',
                  ),
                      SavedItemCard(
                    title: 'Adobe Illustrator for all\nBeginner Artists',
                    teacher: 'Samuel Doe',
                    imagePath: 'assets/images/courseimage.png',
                    enroll: '4k students',
                    rating: '4.7',
                  ),
                  SavedItemCard(
                    title: 'Adobe Illustrator for all\nBeginner Artists',
                    teacher: 'Samuel Doe',
                    imagePath: 'assets/images/courseimage.png',
                    enroll: '4k students',
                    rating: '4.7',
                  ),
                  SavedItemCard(
                    title: 'Digital Illustration Technique\nfor Procreate',
                    teacher: 'Sarah Morry',
                    imagePath: 'assets/images/course.png',
                    enroll: '2k students',
                    rating: '4.0',
                  ),
                  SavedItemCard(
                    title: 'Learn How to Draw Cartoon\nFaces the Easy Way!',
                    teacher: 'Sarah Morry',
                    imagePath: 'assets/images/courseimage.png',
                    enroll: '1k students',
                    rating: '4.2',
                  ),
                  SavedItemCard(
                    title: 'Sketchbook Essentials\nfor Everyone!',
                    teacher: 'Sarah Morry',
                    imagePath: 'assets/images/courseimage.png',
                    enroll: '2k students',
                    rating: '4.0',
                  ),
                  SavedItemCard(
                    title: 'Sketchbook Essentials\nfor Everyone!',
                    teacher: 'Sarah Morry',
                    imagePath: 'assets/images/course.png',
                    enroll: '2k students',
                    rating: '4.0',
                  ),
                ],
              ),
            ),
            /// The add more button at the bottom of the screen
            const AddMoreButton(),
          ],
        ),
      ),
    );
  }

}
