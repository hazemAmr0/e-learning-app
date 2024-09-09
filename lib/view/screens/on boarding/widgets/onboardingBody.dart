import 'package:e_learning/core/utils/appColor.dart';
import 'package:e_learning/view/screens/on%20boarding/widgets/onboarding_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'BottomActionButtons .dart';
import 'buildPageView.dart';
import 'onboardingWidget.dart';
import 'skipbutton.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({Key? key}) : super(key: key);

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  final PageController _controller = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Stack(
        children: [
          OnboardingPageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
          ),
          if (_currentPage != 2)
            SkipButton(
              onPressed: () => _controller.jumpToPage(2),
            ),
          OnboardingPageIndicator(controller: _controller),
          if (_currentPage == 2) BottomActionButtons(),
        ],
      ),
    );
  }
}
