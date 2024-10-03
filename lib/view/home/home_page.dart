import 'package:e_learning/core/utils/appColor.dart';
import 'package:e_learning/view/screens/Courses/Courses_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(); // Initialize PageController
  }

  @override
  void dispose() {
    _pageController.dispose(); // Dispose PageController when done
    super.dispose();
  }

  void _onNavBarTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index); // Navigate to the selected page
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index; // Update the selected index on page change
          });
        },
        children: const [
       CoursesPage(),
       CoursesPage(),
       CoursesPage(),
       CoursesPage(),
        ],
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColor.brightBlue,
          borderRadius: BorderRadius.circular(40),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal:8),
        child: GNav(
          gap: 4,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          color: Colors.white,
          activeColor: Colors.white,
          backgroundColor: AppColor.brightBlue,
          selectedIndex: _selectedIndex, // Set the selected tab
          onTabChange: _onNavBarTap, // Update the page when tapping a tab
          tabs: const [
            GButton(icon: IconlyLight.home, text: 'Home'),
            GButton(icon: Icons.book_rounded, text: 'Course'),
            GButton(icon: IconlyLight.chat, text: 'Search'),
            GButton(icon: IconlyLight.profile, text: 'Profile'),
          ],
        ),
      ),
    );
  }
}
