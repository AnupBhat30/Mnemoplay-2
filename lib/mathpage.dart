import 'package:flutter/material.dart';
import 'package:learning/biopage.dart';
import 'package:learning/leaderboard.dart';
import 'package:learning/userpage.dart';
import 'package:learning/mathhomepage.dart';
<<<<<<< HEAD
=======

>>>>>>> eeefc354556e6100309bf22e781446a336131e4b
class MathPage extends StatefulWidget {
  @override
  _MathPageState createState() => _MathPageState();
}

class _MathPageState extends State<MathPage> {
  int currentIndex = 0;

  final List<Widget> pages = [
    MathHome(),
    BioPage(),
    LeaderboardPage(),
    UserPage(),
  ];
  bool showAppBar = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF907F9F),
<<<<<<< HEAD

=======
>>>>>>> eeefc354556e6100309bf22e781446a336131e4b
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
            showAppBar = index != 2;
            showAppBar = index != 3;
          });
        },
      ),
    );
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> eeefc354556e6100309bf22e781446a336131e4b
