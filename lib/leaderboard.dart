import 'package:flutter/material.dart';

class LeaderboardPage extends StatelessWidget{
  final String username;

  const LeaderboardPage({Key? key, required this.username, required this.points}) : super(key: key);
  final int points;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xFF6F4E37),
          title: Center(
            child: Text(
              'Leaderboard',
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 60,
            left: 30,
            child: Container(
              color: Color(0xFF6F4E37),
              height:800,
              width:430,
            ),),
          Positioned(
            top: 70,
            left: 40,
            child: Text('Position', style:TextStyle(
              color: Color(0xFFF7E7CE),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )),
          ),
          Positioned(
            top: 70,
            left: 210,
            child: Text('User', style:TextStyle(
              color: Color(0xFFF7E7CE),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )),
          ),
          Positioned(
            top: 70,
            left: 390,
            child: Text('Points', style:TextStyle(
              color: Color(0xFFF7E7CE),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )),
          ),
          Positioned(
            top: 100,
            left: 68,
            child: Text('1.', style:TextStyle(
              color: Color(0xFFF7E7CE),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )),
          ),
          Positioned(
            top: 180,
            left: 68,
            child: Text('2.', style:TextStyle(
              color: Color(0xFFF7E7CE),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )),
          ),
          Positioned(
            top: 260,
            left: 68,
            child: Text('3.', style:TextStyle(
              color: Color(0xFFF7E7CE),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )),
          ),
          Positioned(
            top: 100,
            left: 190,
            child: Text('$username', style:TextStyle(
              color: Color(0xFFF7E7CE),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )),
          ),
          Positioned(
            top: 180,
            left: 190,
            child: Text('User01', style:TextStyle(
              color: Color(0xFFF7E7CE),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )),
          ),
          Positioned(
            top: 260,
            left: 190,
            child: Text('User02', style:TextStyle(
              color: Color(0xFFF7E7CE),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )),
          ),
          Positioned(
            top: 100,
            left: 390,
            child: Text('$points', style:TextStyle(
              color: Color(0xFFF7E7CE),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )),
          ),
          Positioned(
            top: 180,
            left: 390,
            child: Text('20', style:TextStyle(
              color: Color(0xFFF7E7CE),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )),
          ),
          Positioned(
            top: 260,
            left: 390,
            child: Text('10', style:TextStyle(
              color: Color(0xFFF7E7CE),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )),
          ),
        ],
      ),
    );
  }

}