import 'package:flutter/material.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';

class UserPage extends StatelessWidget {
  final String username; // Add this line

  const UserPage({Key? key, required this.username}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 50,
        width: 50,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/main');
          },
          child: Image.asset('assets/temp/home1.png', height: 30, width: 30),
        ),
      ),
      backgroundColor: const Color(0xFFF7E7CE),
      body: Stack(
        children: [
          Positioned(
            top: 110,
            left: 30,
            child: CircularProfileAvatar(
              'assets/temp/av.jpg',
              radius: 50,
              backgroundColor: Colors.transparent,
              borderWidth: 5,
              borderColor: Color(0xFF6F4E37),
            ),
          ),
          Positioned(
            top: 200,
            left: 42,
            child: Text(
              'User',
              style: TextStyle(
                color: Color(0xFF6F4E37),
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 240,
            left: 48,
            child: Text(
              'India',
              style: TextStyle(
                color: Color(0xFF6F4E37),
                fontSize: 15,
              ),
            ),
          ),
          Positioned(
            top: 300,
            left: 5,
            child: SizedBox(
              height: 120,
              width: 180,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xff6F4E37),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Streaks: 5\n'
                      'Course: Math'
                      '\nLevels: 1/3'
                      '',


                  style: TextStyle(
                    color: Color(0xFFF7E7CE),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 300,
            left: 230,
            child: SizedBox(
              height: 120,
              width: 180,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xff6F4E37),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Rank: #1\n'
                      'Points: 70'
                      '\nQuizzes: 2'
                      '',


                  style: TextStyle(
                    color: Color(0xFFF7E7CE),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 820,
            left: 150,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                'Log Out',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}