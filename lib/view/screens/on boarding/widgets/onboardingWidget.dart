import 'package:e_learning/core/utils/appColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class buildOnboardingPages extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;


  const buildOnboardingPages({super.key, required this.imagePath, required this.title, required this.description,});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 240,
              child: SvgPicture.asset(imagePath, height: 250)), // Your image asset
            SizedBox(height: 40),
            Text(
              title,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.bold,
      
                fontSize: 24,
              ),
              
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              description,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: AppColor.Gray,
              ),
              textAlign: TextAlign.center,
            ),
            
          ],
        ),
      ),
    );
  }
}

