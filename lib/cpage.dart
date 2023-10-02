import 'package:flutter/material.dart';
import 'package:learning/biopage.dart';
import 'package:learning/chomepage.dart';
import 'package:learning/leaderboard.dart';
import 'package:learning/userpage.dart';

class CPage extends StatefulWidget {
  @override
  _CPageState createState() => _CPageState();
}

class _CPageState extends State<CPage> {
  int currentIndex = 0;

  final List<Widget> pages = [
    CHome(),
    BioPage(),
    LeaderboardPage(),
    UserPage(),
  ];

  bool showAppBar = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF907F9F),
      appBar: showAppBar
          ? AppBar(
              backgroundColor: Colors.white,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 10), // Add some spacing to the left
                  Image.asset(
                    'assets/temp/c.png',
                    height: 40, // Adjust the height as needed
                    width: 40, // Adjust the width as needed
                  ),
                  Text(
                    'C',
                    style: TextStyle(
                      color: Color(0xFF907F9F),
                      fontSize: 30, // Adjust the font size as needed
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          : null,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_vintage_rounded),
            label: 'Biomimicry',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.leaderboard_rounded),
            label: 'Leaderboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle_rounded),
            label: 'User',
          ),
        ],
        selectedItemColor: Color(0xFF907F9F),
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;

            // Hide the app bar when navigating to UserPage (index 3)
            showAppBar = index != 3;
          });
        },
      ),
    );
  }
}
