import 'package:e_learning/core/utils/appColor.dart';
import 'package:flutter/material.dart';

class ProfilePictureWithEdit extends StatelessWidget {
  const ProfilePictureWithEdit({super.key});

// URL of the profile picture
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CircleAvatar(
          backgroundColor: AppColor.primaryColor,
          radius: 50,
          backgroundImage: AssetImage('assets/images/profilepic.png'),
        ),
        Positioned(
          left: 30,
          bottom: 0,
          child: Container(
            height: 30,
            width: 50,
            decoration: BoxDecoration(
              color: AppColor.brightBlue,
              borderRadius: BorderRadius.circular(60),
            ),
            child: const Icon(
              Icons.edit_outlined,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
