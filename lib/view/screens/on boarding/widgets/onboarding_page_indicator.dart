import 'package:e_learning/core/utils/appColor.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPageIndicator extends StatelessWidget {
  final PageController controller;

  const OnboardingPageIndicator({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 200,
      left: 0,
      right: 0,
      child: Center(
        child: SmoothPageIndicator(
          controller: controller,
          count: 3,
          effect: const WormEffect(
            radius: 8,
            spacing: 16,
            dotHeight: 7,
            dotWidth: 15,
            strokeWidth: 5,
            dotColor: Colors.white,
            activeDotColor: AppColor.brightBlue,
          ),
        ),
      ),
    );
  }
}
