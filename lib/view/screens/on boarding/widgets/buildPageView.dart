import 'package:flutter/material.dart';

import 'onboardingWidget.dart';

class OnboardingPageView extends StatelessWidget {
  final PageController controller;
  final ValueChanged<int> onPageChanged;

  const OnboardingPageView({
    Key? key,
    required this.controller,
    required this.onPageChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      onPageChanged: onPageChanged,
      children: const [
        buildOnboardingPages(
          imagePath: 'assets/images/onboarding1.svg',
          title: 'Numerous free\n trial courses',
          description: 'Free courses for you to find your\n way to learning',
        ),
        buildOnboardingPages(
          imagePath: 'assets/images/onboarding2.svg',
          title: 'Quick and easy\n learning',
          description:
              'Easy and fast learning at any time\n to help you improve various skills',
        ),
        buildOnboardingPages(
          imagePath: 'assets/images/onboarding3.svg',
          title: 'Create your own\n study plan',
          description:
              'Study according to the study plan,\n make study more motivated',
        ),
      ],
    );
  }
}
