import 'package:e_learning/core/utils/appColor.dart';
import 'package:flutter/material.dart';

class RecommendedButton extends StatelessWidget {
  const RecommendedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.brightBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      ),
      child: const Text(
        'Recommended',
        style: TextStyle(
          fontFamily: 'Plus Jakarta Display',
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Colors.white,
        ),
      ),
    );
  }
}
