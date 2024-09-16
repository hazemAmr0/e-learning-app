import 'package:e_learning/core/utils/appColor.dart';
import 'package:e_learning/view/screens/course_details/widgets/Tab_bar_section.dart';

import 'package:e_learning/view/screens/course_details/widgets/course_info_section.dart';
import 'package:e_learning/view/screens/course_details/widgets/custom%20_details_screen_appBar.dart';
import 'package:e_learning/view/screens/course_details/widgets/custom_description.dart';
import 'package:e_learning/view/screens/course_details/widgets/resources_for_download_widget.dart';
import 'package:e_learning/view/screens/course_details/widgets/video_play_widget.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class CourseDetailsBody extends StatelessWidget {
  const CourseDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              //CustomAppBar
              CustomDetailScreenAppBar(),

              //Video Player
              VideoPlayerWidget(),

              //Course info section
              CourseInfoSection(),
              // Course Duration, Lessons, Rating, Students
              CourseDescription(),
              // TabBar Section
              TabSection(),
              SizedBox(
                height: 70,
              ),

              //resources for download
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Resources for download',
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const ResourcesForDownloadWidget(),
              const ResourcesForDownloadWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
