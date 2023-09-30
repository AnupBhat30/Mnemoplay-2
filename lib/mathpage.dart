import 'package:flutter/material.dart';
class MathPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFF907F9F),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            SizedBox(width:525,),
            Image.asset('assets/temp/math.png', height: 50, width: 50),
            Text(
              'Math',
              style: TextStyle(
                color: Color(0xFF907F9F),
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.home), label:'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.filter_vintage_rounded), label:'Biomimicry'),
          BottomNavigationBarItem(icon: Icon(Icons.leaderboard_rounded), label:'Leaderboard'),
          BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle_rounded), label:'User'),
        ],
        selectedItemColor: Color(0xFF907F9F),
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,

      ),
    );
  }

}