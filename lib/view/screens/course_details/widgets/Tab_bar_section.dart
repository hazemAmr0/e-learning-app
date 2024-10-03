import 'package:e_learning/view/screens/course_details/widgets/course_card_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabSection extends StatelessWidget {
  const TabSection({super.key});

  @override
  /// A widget that displays a tab bar with two tabs: Overview and Lessons.
  /// The Overview tab displays a centered text that says "Overview Content".
  /// The Lessons tab displays a list view of [CourseCardDetailsScreen] widgets.
  ///
  /// The height of the tab bar view is set to 400, but this can be adjusted
  /// depending on the content of the tab bar view.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            /// The tab bar with two tabs: Overview and Lessons
            TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.blue,
              tabs: [
                Tab(text: 'Overview'),
                Tab(text: 'Lessons'),
              ],
            ),
            /// The tab bar view with two children: Overview and Lessons
            Container(
             height: 400.h, // Adjust height for TabBarView content
              child: TabBarView(
                children: [
                  /// The Overview tab displays a centered text
                  Center(
                    child: Text('Overview Content'),
                  ),
                  /// The Lessons tab displays a list view of CourseCardDetailsScreen widgets
                  ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const CourseCardDetailsScreen();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
