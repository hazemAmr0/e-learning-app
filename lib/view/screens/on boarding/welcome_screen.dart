import 'package:e_learning/core/utils/appColor.dart';
import 'package:e_learning/view/screens/on%20boarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeOnboardingScreen extends StatelessWidget {
  const WelcomeOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:
            AppColor.primaryColor, // Adjust based on your AppColor definition
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Top Image
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: SvgPicture.asset(
                  'assets/images/onboarding4.svg',
                 height: 200.h,
                  alignment: Alignment.center,
                ),
              ),
              const SizedBox(height: 150),

              // Text and Line
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text Section
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "You learn",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'While Sitting at\nHome',
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: AppColor.Gray,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 50),

                  // Line Image
                  SvgPicture.asset(
                    'assets/images/line1.svg',
                   height: 100.h,
                  ),
                ],
              ),
              

              // Continue Button
              Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () {
                    // Handle button action
                  },
                  child: InkWell(
                  
                    onTap: (){
                       Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OnBoardingView()));
                    },
                    child: Container(
                     height: 150.h,
                     width: 150.w,
                      decoration: BoxDecoration(
                        color: AppColor.brightBlue,
                        borderRadius: BorderRadius.circular(80),
                      ),
                      child: Center(
                        child: Text(
                          'Continue',
                          style: GoogleFonts.dmSans(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
