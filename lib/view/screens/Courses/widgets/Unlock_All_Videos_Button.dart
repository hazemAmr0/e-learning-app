import 'package:e_learning/core/utils/appColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UnlockAllVideosButton extends StatelessWidget {
  const UnlockAllVideosButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            margin: const EdgeInsets.only(bottom: 20),
            width: double.infinity,
           height: 70.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: AppColor.brightBlue,
            ),
            child: const Center(
                child: Text(
              'Unlock All Videos',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )),
          ),
        ),
      ),
    );
  }
}
