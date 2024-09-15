import 'package:e_learning/core/utils/appColor.dart';
import 'package:e_learning/view/screens/corse/widgets/category_section.dart';
import 'package:e_learning/view/screens/corse/widgets/course_card.dart';
import 'package:e_learning/view/screens/corse/widgets/custom_app_bar.dart';
import 'package:e_learning/view/screens/corse/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseScreenBody  extends StatelessWidget {
  const CourseScreenBody ({super.key});

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
            Container(
              height: 40,
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Row(children: [
                  Text('Choice your course',style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  )),
                  const Spacer(),
                Text('see all',style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: AppColor.brightBlue,
                  )),
                ],),
              ),
            ),
            // Row(
            //   children: [
            //     FilterChipWidget(label: "All"),
                
            //     FilterChipWidget(label: "Popular"),
               
            //     FilterChipWidget(label: "New"),
            //   ],
            // ),
            const SizedBox(height: 20),
      
            // Course List
            Expanded(
              child: ListView(
                children: [
                  CourseCard(
                    title: "Product Design v1.0",
                    instructor: "Robertson Connie",
                    price: 190,
                    hours: 16,
                    image: "assets/images/courseimage.png",
                  ),
                  CourseCard(
                    title: "Java Development",
                    instructor: "Nguyen Shane",
                    price: 190,
                    hours: 16,
                    image: "assets/images/courseimage.png",
                  ),
                  CourseCard(
                    title: "Visual Design",
                    instructor: "Bert Pullman",
                    price: 250,
                    hours: 14,
                    image: "assets/images/courseimage.png",
                  ),
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



