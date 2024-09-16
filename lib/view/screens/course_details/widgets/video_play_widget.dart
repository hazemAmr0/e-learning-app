import 'package:flutter/material.dart';

class VideoPlayerWidget extends StatelessWidget {
  const VideoPlayerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/video.png', // Replace with your image URL
      height: 200,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}
