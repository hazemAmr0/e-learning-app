import 'package:e_learning/core/utils/appColor.dart';
import 'package:e_learning/view/screens/my_save_course/widgets/recommended_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';

class SavedEmptyScreen extends StatelessWidget {
  const SavedEmptyScreen({super.key});

  @override
  /// Builds the empty saved list screen widget
  ///
  /// This widget displays an image, a text, and a button
  ///
  /// The image is a picture of a empty box
  /// The text is a message saying that nothing is here
  /// The button is a recommended button to suggest to the user
  /// to add something to the saved list
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Sets the background color of the screen to the primary color
      backgroundColor: AppColor.primaryColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            //
            Expanded(
              child: Column(
                /// Aligns the children to the center of the column
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Image
                  Padding(
                    /// Adds padding to the image
                    padding: const EdgeInsets.symmetric(horizontal: 72.0),
                    child: Image.asset('assets/images/imgg.png',
                        /// Sets the width and height of the image
                       width: 231.w,height: 210.h),
                  ),
                  const SizedBox(height: 20),

                  // Text
                  Text(
                    'Nothing is here!',
                    style: GoogleFonts.dmSans(
                      /// Sets the font weight to bold
                      fontWeight: FontWeight.bold,
                      /// Sets the font size to 24
                      fontSize: 24,
                      /// Sets the font color to black
                      color: Colors.black,
                      
                    ),
                    /// Aligns the text to the center
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 13),
                  Text(
                    'We found nothing in your save list! Want to\nhave some? Try something best',
                    style:GoogleFonts.dmSans(
                      /// Sets the font weight to 400
                      fontWeight: FontWeight.w400,
                      /// Sets the font size to 14
                      fontSize: 14,
                      /// Sets the font color to gray
                      color: AppColor.Gray,
                    ),
                    /// Aligns the text to the center
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 35),
                  // Button
                  const RecommendedButton(),
                ],
              ),
            ),

            
            
          ],
        ),
      ),
    );
  }

}


