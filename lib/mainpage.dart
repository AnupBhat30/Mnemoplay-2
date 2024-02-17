import 'package:flutter/material.dart';
import 'package:learning/userpage.dart';

class MainPage extends StatefulWidget {
  final String username;

  const MainPage({Key? key, required this.username}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),

        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xFF6F4E37),
          title: Center(
            child: Text(
              'HOME',
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      backgroundColor: const Color(0xFFF7E7CE),
      body: Stack(
        children: [
          Positioned(
            top: 110,
            left: 30,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/temp/av.jpg'),
              radius: 25,
            ),
          ),
          Positioned(
            top: 170,
            left: 30,
            child: Text(
              'Hi, anup',
              style: TextStyle(
                color: Color(0xFF6F4E37),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 200,
            left: 30,
            child: Text(
              'Your Streaks - 5🔥',
              style: TextStyle(
                color: Color(0xFF6F4E37),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 335,
            left: 30,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/cm');
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF6F4E37),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                minimumSize: Size(170, 180),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/temp/math1.png',
                    width: 110,
                    height: 110,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Math',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 335,
            left: 230,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/bio');
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF6F4E37),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                minimumSize: Size(170, 180),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/temp/bio1.png',
                    width: 110,
                    height: 110,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Biomimicry',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 550,
            left: 230,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/lead');
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF6F4E37),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                minimumSize: Size(170, 180),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/temp/lea1.png',
                    width: 110,
                    height: 110,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Leaderboard',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 550,
            left: 30,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => UserPage(username: widget.username)));
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF6F4E37),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                minimumSize: Size(170, 180),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/temp/user1.png',
                    width: 110,
                    height: 110,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'User',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}