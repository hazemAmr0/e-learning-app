import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VideoPlayerWidget extends StatelessWidget {
  const VideoPlayerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/video.png', // Replace with your image URL
     height: 200.h,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}
