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

      body: Stack(
        children: [
          Positioned(
            top: 60,
            left: -4,
              child: Container(
                width:434,
                height:350,
               /* color:Color(0xFF6F4E37),*/
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(20),
                  color:Color(0xFF6F4E37),
                ),

              )),
          Positioned(
            top: 60,
            left: 120,
              child: Text('Leaderboard', style:
              TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Color(0xFFF7E7CE),
              )),),
          const Positioned(
            top: 150,
            left: 169,
              child: CircleAvatar(
                backgroundColor: Color(0xFFF7E7CE),
                backgroundImage: AssetImage('assets/temp/avv1.png'),
                radius:50,
              ),),
          const Positioned(
            top: 200,
            left: 10,
            child: CircleAvatar(
              backgroundColor: Color(0xFFF7E7CE),
              backgroundImage: AssetImage('assets/temp/avv2.png'),
              radius:50,
            ),),
          const Positioned(
            top: 200,
            left: 320,
            child: CircleAvatar(
              backgroundColor: Color(0xFFF7E7CE),
              backgroundImage: AssetImage('assets/temp/avv3.png'),
              radius:50,
            ),),
          const Positioned(
            top: 300,
            left: 35,
            child: Text('Anup',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                    fontSize: 20,
                color: Color(0xFFF7E7CE),
            )),
          ),
          const Positioned(
            top: 325,
            left: 41,
            child: Text('200',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xFFF7E7CE),
                )),
          ),
          const Positioned(
            top: 250,
            left: 180,
            child: Text('Sreyash',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xFFF7E7CE),
                )),
          ),
          const Positioned(
            top: 275,
            left: 200,
            child: Text('500',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xFFF7E7CE),
                )),
          ),
          const Positioned(
            top: 300,
            left: 340,
            child: Text('Callan',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xFFF7E7CE),
                )),
          ),
          const Positioned(
            top: 325,
            left: 350,
            child: Text('100',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xFFF7E7CE),
                )),
          ),
          Positioned(
              top: 450,
              left: -4,
              child: Container(
                width:434,
                height:100,
                /* color:Color(0xFF6F4E37),*/
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(20),
                  color:Color(0xFF6F4E37),
                ),

              )),
          Positioned(
              top: 590,
              left: -4,
              child: Container(
                width:434,
                height:100,
                /* color:Color(0xFF6F4E37),*/
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(20),
                  color:Color(0xFF6F4E37),
                ),

              )),
          Positioned(
              top: 720,
              left: -4,
              child: Container(
                width:434,
                height:100,
                /* color:Color(0xFF6F4E37),*/
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(20),
                  color:Color(0xFF6F4E37),
                ),

              )),
          const Positioned(
            top: 485,
            left: 0,
            child: Text('   4.                             Rachelle                         50',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xFFF7E7CE),
                )),
          ),
          const Positioned(
            top: 620,
            left: 0,
            child: Text('   5.                             Dale                                 40',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xFFF7E7CE),
                )),
          ),
          const Positioned(
            top: 760,
            left: 0,
            child: Text('   6.                             Siddhali                             30',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xFFF7E7CE),
                ),),
          ),
          Positioned(
            top: 840,
            left: 170,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/rewards');
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF6F4E37),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                minimumSize: Size(50, 30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/temp/rewards.png',
                    width: 50,
                    height: 50,
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