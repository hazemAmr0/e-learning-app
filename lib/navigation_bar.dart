

import 'package:e_learning/core/utils/appColor.dart';
import 'package:e_learning/view/screens/corse/course_screen.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatefulWidget {
  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int _selectedIndex = 0;

  // List of screens for each tab
  final List<Widget> _screens = [
    SearchScreen(),
    CourseScreen(),
    SearchScreen(),
    MessageScreen(),
    AccountScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Display the selected screen
      body: _screens[_selectedIndex],

      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 2,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent, // Makes background transparent
          elevation: 0, // Removes shadow
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,
                  color: _selectedIndex == 0 ? Colors.blue : Colors.black),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_book,
                  color: _selectedIndex == 1 ? Colors.blue : Colors.black),
              label: 'Course',
            ),
            BottomNavigationBarItem(
              icon: Column(
                mainAxisAlignment:
                    MainAxisAlignment.end, // Aligns the icon to the top
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: AppColor.primaryColor,
                    ),
                    child: Icon(Icons.search,
                        color: _selectedIndex == 2 ? Colors.blue : Colors.blue),
                  ),

                  Text('Search',
                      style: TextStyle(
                          color: _selectedIndex == 2
                              ? Colors.blue
                              : Colors.black)), // Text label
                ],
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message,
                  color: _selectedIndex == 3 ? Colors.blue : Colors.black),
              label: 'Message',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person,
                  color: _selectedIndex == 4 ? Colors.blue : Colors.black),
              label: 'Account',
            ),
          ],
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: TextStyle(fontSize: 12),
          unselectedLabelStyle: TextStyle(fontSize: 12),
        ),
      ),
    );
  }
}
class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Search Screen'),
    );
  }
}

class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Message Screen'),
    );
  }
}

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Account Screen'),
    );
  }
}
