// lesson_video_screen.dart
import 'package:e_learning/core/utils/appColor.dart';
import 'package:e_learning/view/screens/course_details/widgets/bottomsheet_content.dart';
import 'package:e_learning/view/screens/course_details/widgets/buy_bottom_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';

class LessonVideoScreen extends StatelessWidget {
  const LessonVideoScreen({super.key});

  @override
  /// Lesson Video Screen widget.
  ///
  /// This widget displays a video player in the background and a draggable
  /// bottom sheet with content.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Bottom navigation bar with a "Buy Now" button.
      bottomNavigationBar: const BuyNowBottomBar(
        /// The color of the bottom navigation bar.
        color: AppColor.brightBlue,

        /// The color of the button.
        buttoncolor: Colors.white,

        /// The color of the text on the button.
        textcolor: Colors.black,
      ),
      /// The body of the screen.
      body: SafeArea(
        child: Stack(
          children: [
            /// The video player in the background.
            const VideoPlayerPlaceholder(),

            /// The draggable bottom sheet with content.
            DraggableScrollableSheet(
              /// The initial size of the bottom sheet (50% of the screen).
              initialChildSize: 0.5,

              /// The minimum size of the bottom sheet when collapsed (20% of the screen).
              minChildSize: 0.2,

              /// The maximum size of the bottom sheet when expanded (60% of the screen).
              maxChildSize: 0.6,

              /// The builder function to create the bottom sheet content.
              builder: (BuildContext context, ScrollController scrollController) {
                return Container(
                  /// The decoration of the bottom sheet.
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        offset: const Offset(0, -5),
                      ),
                    ],
                  ),

                  /// The content of the bottom sheet.
                  child: BottomSheetContent(
                    /// The scroll controller to control the scrolling behavior of the bottom sheet.
                    scrollController: scrollController,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

}

// video_player_placeholder.dart

class VideoPlayerPlaceholder extends StatelessWidget {
  const VideoPlayerPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Image.asset(
        'assets/images/video.png',
       height: 300.h,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
