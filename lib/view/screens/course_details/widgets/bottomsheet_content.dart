import 'package:e_learning/view/screens/course_details/widgets/course_over_view_details.dart';
import 'package:e_learning/view/screens/course_details/widgets/lesson_list.dart';
import 'package:flutter/material.dart';

class BottomSheetContent extends StatefulWidget {
  const BottomSheetContent({super.key, required this.scrollController});

  final ScrollController scrollController;

  @override
  State<BottomSheetContent> createState() => _BottomSheetContentState();
}

class _BottomSheetContentState extends State<BottomSheetContent> {
  bool _showLessonList = true;

  @override
  /// Builds the content of the bottom sheet with scrolling behavior.
  ///
  /// The content consists of a drag handle, a course details widget, and a
  /// lesson list widget. The lesson list widget is only shown if the `_showLessonList` flag is true.
  ///
  /// The `widget.scrollController` is used as the `controller` for the `ListView` to enable the bottom sheet to be scrolled.
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Drag handle
        Container(
          width: 50,
          height: 5,
          margin: const EdgeInsets.only(top: 8, bottom: 16),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        // Content of the bottom sheet with scrolling behavior
        Expanded(
          child: ListView(
            controller: widget.scrollController, // Use the passed scrollController
            padding: const EdgeInsets.all(16),
            children: [
              const CourseDetails(),
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
              // Show lesson list if _showLessonList is true
              if (_showLessonList) ...[
                LessonList(),
                const SizedBox(height: 32),
              ],
            ],
          ),
        ),
      ],
    );
  }
}
