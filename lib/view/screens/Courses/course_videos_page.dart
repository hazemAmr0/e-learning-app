import 'package:e_learning/core/utils/appColor.dart';
import 'package:e_learning/view/screens/Courses/widgets/Unlock_All_Videos_Button.dart';
import 'package:e_learning/view/screens/Courses/widgets/header.dart';

import 'package:e_learning/view/screens/Courses/widgets/selector_item.dart';
import 'package:e_learning/view/screens/Courses/widgets/videos_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class CourseVideosPage extends StatelessWidget {
  const CourseVideosPage({super.key});

  @override
  /// Builds the course videos page widget.
  ///
  /// This widget displays the course header, videos list, and unlock all videos button.
  ///
  /// It is composed of several widgets:
  ///
  /// - [Header] widget as the topbar with share icon and lesson content selector
  /// - [VideosListWidget] widget to display the list of videos
  /// - [UnlockAllVideosButton] widget to unlock all videos
  ///
  /// The videos list is wrapped in a [SingleChildScrollView] widget to make it scrollable horizontally.
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              /// Course header
              Container(
                height: 150,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Header(
                        iconRight: const Icon(Icons.share_outlined),
                        onPressed: () {},
                        onPressed2: () {},
                        iconLeft: const Icon(IconlyLight.arrowLeft2),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      width: double.infinity,
                      height: 50,
                      decoration: const BoxDecoration(
                          color: AppColor.brightBlue,
                          borderRadius: BorderRadius.zero),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SelectorItem(label: 'Course details'),
                            const SizedBox(width: 5),
                            SelectorItem(label: 'Lesson Content (50)'),
                            const SizedBox(width: 5),
                            SelectorItem(label: '120 Reviews'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              /// Videos list and unlock all videos button
              Container(
                height: 700,
                color: AppColor.primaryColor,
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    Image.asset('assets/images/image10.png'),
                    const SizedBox(height: 15),
                    const VideosListWidget(),
                    const UnlockAllVideosButton(),
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
