import 'package:e_learning/core/utils/appColor.dart';
import 'package:e_learning/view/screens/comments/widgets/add_replay_widget.dart';
import 'package:e_learning/view/screens/comments/widgets/comments_section.dart';
import 'package:flutter/material.dart';

class CommentsScreen extends StatelessWidget {
  const CommentsScreen({super.key});

  @override
  /// This widget is the main screen for the comments feature.
  /// It displays all the comments and allows the user to add a new comment.
  /// The user can also navigate back to the previous screen.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// The background color of the screen is the primary color of the app.
      backgroundColor: AppColor.primaryColor,
      /// The body of the screen is a [SingleChildScrollView] which contains
      /// a [Column] widget with all the comments and a button to add a new comment.
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            /// The comments are displayed in a left aligned column.
            crossAxisAlignment: CrossAxisAlignment.start,
            /// The children of the column are all the comments and the button to add a new comment.
            children: [
              /// This is the button to navigate back to the previous screen.
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  onPressed: () {
                    /// When the button is pressed, the user is navigated back to the previous screen.
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
              ),
              /// This is the button to add a new comment.
              const AddReplayWidget(),
              /// This is the comments section.
              /// It displays all the comments in a list.
              /// The user can scroll through the list to see all the comments.
              const CommentsSection(
                /// This is the image of the user who made the comment.
                image: 'assets/images/image.png',
                /// This is the name of the user who made the comment.
                name: '@mouni',
                /// This is a boolean that indicates if the user who made the comment is a teacher or not.
                isTeacher: false,
                /// This is the comment itself.
                comment: 'How to get better at line? I am really stuck in this step!',
              ),
              /// This is a spacer that adds some space between the comments and the button to add a new comment.
              const SizedBox(height: 20),
              /// This is the second comment.
              const CommentsSection(
                image: 'assets/images/profilepic.png',
                name: '@anyymor',
                isTeacher: true,
                comment: 'The step is really easy, just keep practicing line drawing with right posture and correct pencil holding as showen in the video! Good luck  ',),
            ],
          ),
        ),
      ),
    );
  }
}




