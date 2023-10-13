import 'package:flutter/material.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF907F9F),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Align(
          alignment: Alignment.center,
          child: Text(
            'User Profile',
            style: TextStyle(
              color: Color(0xFF907F9F),
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Center(
              child: CircularProfileAvatar(
                '',
                child: Image.asset(
                  'assets/temp/user.png',
                  fit: BoxFit.cover,
                ),
                borderColor: Colors.white,
                borderWidth: 3,
                radius: 75,
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'Name',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                'Bio',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(
                      color: Color(0xFF907F9F),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: 40),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    'Appearance',
                    style: TextStyle(
                      color: Color(0xFF907F9F),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 2,
              color: Colors.white,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  SizedBox(width: 320),
                  Text(
                    'Statistics',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(64),
                  width: 750,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    '',
                    style: TextStyle(
                      color: Color(0xFF907F9F),
                      fontSize: 18,
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 200,
                  child: Row(
                    children: [
                      Image.asset('assets/temp/fire.png', height: 20, width: 20),
                      SizedBox(width: 5), // Add spacing
                      Text(
                        'Streaks',
                        style: TextStyle(
                          color: Color(0xFF907F9F),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 200,
                  child: Row(
                    children: [
                      Image.asset('assets/temp/leaderboard.png', height: 35, width: 35),
                      SizedBox(width: 5),
                      Text(
                        'Leaderboard',
                        style: TextStyle(
                          color: Color(0xFF907F9F),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 50,
                  left: 200,
                  child: Row(
                    children: [
                      Image.asset('assets/temp/clock.png', height: 20, width: 20),
                      Text(
                        'Time Spent',
                        style: TextStyle(
                          color: Color(0xFF907F9F),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 50,
                  right: 245,
                  child: Row(
                    children: [
                      Image.asset('assets/temp/book.png', height: 35, width: 35),
                      Text(
                        'Courses',
                        style: TextStyle(
                          color: Color(0xFF907F9F),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                'Log Out',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
