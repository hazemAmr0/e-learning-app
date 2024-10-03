import 'package:e_learning/core/utils/appColor.dart';
import 'package:e_learning/view/screens/Courses/widgets/Video_Section_Header.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:e_learning/view/screens/Courses/widgets/video_item.dart';
import 'package:flutter/material.dart';


class VideosListWidget extends StatelessWidget {
  const VideosListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VideoSectionHeader(
              mainTitle: 'Welcome to the Course',
              subTitle: '56 minutes',
            ),
            VideoItem(
                isCompleted: true,
                title: 'what is marketing?',
                time: '56 Minutes'),
            VideoItem(
                isCompleted: true,
                title: 'what is marketing?',
                time: '56 Minutes'),
            VideoItem(
                isCompleted: true,
                title: 'what is marketing?',
                time: '56 Minutes'),
            VideoItem(
                isCompleted: true,
                title: 'what is marketing?',
                time: '56 Minutes'),
            VideoItem(
                isCompleted: true,
                title: 'what is marketing?',
                time: '56 Minutes'),
            VideoItem(
                isCompleted: true,
                title: 'what is marketing?',
                time: '56 Minutes'),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.only(bottom: 20),
                 width: 120.w,
                 height: 35.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColor.brightBlue,
                  ),
                  child: const Center(
                      child: Text(
                    'See all Lessons',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w400),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

