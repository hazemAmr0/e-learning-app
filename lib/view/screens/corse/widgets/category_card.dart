import 'package:e_learning/core/utils/appColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryCard extends StatelessWidget {
  final String assetName;
  final String title;

  const CategoryCard({super.key, required this.assetName, required this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16,left: 16,right: 16),
      child: SizedBox(
       height: 90.h, // Height of the card area
       width: 180.w, // Width of the card area
        child: Stack(
          clipBehavior: Clip.none, // Allow the image to overflow the bounds
          children: [
            // The blue container with rounded corners (top-left and bottom-left)
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColor.brightBlue,
              ),
             width: 250.w,
             height: 120.h, // Adjust height as needed
            ),

            // Positioned image that is bigger and moved more to the left
            Positioned(
              //bottom: 1,
              top: -35, // Keep the image floating above the container
              left: 0, // Align the image on the left
              child: SvgPicture.asset(
                assetName,
               height: 125.h, // Increase image size
              ),
            ),

            // Text positioned on the right side with a white background
            Positioned(
              right: 0,
              top: 40,
              child: Container(
               height: 35.h, // Adjust height as needed
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: const BoxDecoration(
                  color: Colors.white, // White background for the text
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: Text(
                  title, // Adjust text as needed
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColor.brightBlue),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
