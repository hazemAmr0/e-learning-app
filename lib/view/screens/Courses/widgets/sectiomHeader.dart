import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionHeader extends StatelessWidget {
  final String mainTitle;
  final String subTitle;

  SectionHeader({required this.mainTitle, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            mainTitle,
            style:
                GoogleFonts.dmSans(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 4),
          Text(
            subTitle,
            style: GoogleFonts.dmSans(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
