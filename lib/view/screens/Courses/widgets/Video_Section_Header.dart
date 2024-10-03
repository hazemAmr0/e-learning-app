import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoSectionHeader extends StatelessWidget {
  final String mainTitle;
  final String subTitle;

  VideoSectionHeader({required this.mainTitle, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.play_circle_outline_outlined,
                color: Colors.black,
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mainTitle,
                    style: GoogleFonts.dmSans(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 4),
                  Text(
                    subTitle,
                    style: GoogleFonts.dmSans(fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              height: 40, // adjust height as needed
              width: 1.5, // line thickness
              color: Colors.black, // line color
            ),
          ),
        ],
      ),
    );
  }
}
