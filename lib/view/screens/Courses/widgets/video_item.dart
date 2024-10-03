import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VideoItem extends StatelessWidget {
  final String title;
  final String time;
  final bool isCompleted;

  VideoItem({
    required this.title,
    required this.time,
    required this.isCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    size: 20,
                    isCompleted
                        ? Icons.lock_outlined
                        : Icons.play_circle_outline_outlined,
                    color: isCompleted ? Colors.black : Colors.black,
                  ),
                  SizedBox(width: 10),
                  Text(
                    title,
                    style: GoogleFonts.dmSans(fontSize: 12),
                  ),
                ],
              ),
              Text(
                time,
                style: GoogleFonts.dmSans(fontSize: 12),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
             height: 20.h, // adjust height as needed
             width: 1.5.w, // line thickness
              color: Colors.black, // line color
            ),
          ),
        ],
      ),
    );
  }
}
