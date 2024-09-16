import 'package:e_learning/core/routing/route_names.dart';
import 'package:e_learning/navigation_bar.dart';
import 'package:e_learning/view/screens/LoginAndRegister/signup_screen.dart';
import 'package:e_learning/view/screens/comments/comments_screen.dart';
import 'package:e_learning/view/screens/corse/course_screen.dart';
import 'package:e_learning/view/screens/course_details/course_details_screen.dart';
import 'package:flutter/material.dart';

import '../../view/screens/on boarding/welcome_screen.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(
            builder: (_) => const WelcomeOnboardingScreen());
      case Routes.signUp:
        return MaterialPageRoute(builder: (_) =>const SignUpScreen());
      case Routes.navbar:
        return MaterialPageRoute(builder: (_) =>  CustomNavBar());
          case Routes.course:
        return MaterialPageRoute(builder: (_) => const CourseScreen());
         case Routes.courseDetails:
        return MaterialPageRoute(builder: (_) => const CourseDetailsScreen());
         case Routes.comments:
        return MaterialPageRoute(builder: (_) => const CommentsScreen());




      // Add other cases as needed
      default:
        // This is a fallback route in case an undefined route is navigated to.
        return MaterialPageRoute(
            builder: (_) =>
                const WelcomeOnboardingScreen()); // Assuming NotFoundPage is a defined widget for unknown routes
    }
  }
}
