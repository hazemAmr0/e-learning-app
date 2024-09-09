

import 'package:e_learning/core/utils/appColor.dart';
import 'package:e_learning/view/screens/on%20boarding/onboarding_screen.dart';
import 'package:e_learning/view/screens/on%20boarding/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     
   
      home: WelcomeOnboardingScreen(),
    );
  }
}



                       
