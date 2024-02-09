import 'package:flutter/material.dart';

class EastPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A1A1A),
      body: Stack(
        children: [
          Positioned(
            top: -110,
            left: 0,
            child: Image.asset(
              'assets/temp/eastgate2.jpg',
              width: 500,
              height: 500,
            ),
          ),
          Positioned(
            top: 290,
            left: 5,
            child: Text(
              'Eastgate Centre',
              style: TextStyle(
                color: Color(0xFFCFFF6D),
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 340,
            left: 5,
            child: Text(
              'Harare, Zimbabwe',
              style: TextStyle(
                color: Color(0xFFCFFF6D),
                fontSize: 20.0,
              ),
            ),
          ),
          // Positioned Box with Text
          Positioned(
            top: 390,
            left: 5,
            child: SizedBox(
              height: 70,
              width: 180,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  '     Inspired by:\n Termite Mounds',
                  style: TextStyle(
                    color: Color(0xFFCFFF6D),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 390,
            left: 250,
            child: SizedBox(
              height: 70,
              width: 180,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  '           Built in:\n              1996',
                  style: TextStyle(
                    color: Color(0xFFCFFF6D),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 480,
            left: 5,
            child: SizedBox(
              height: 70,
              width: 180,
              child:
              Text('About this place', style: TextStyle(
                color: Color(0xFFCFFF6D),
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
          ),
          Positioned(
            top: 520,
            left: 5,
            child: Text('The Eastgate Centre in Harare, Zimbabwe,\nstands as a pioneering example of biomimicry in\narchitecture,drawing inspiration from the intricate\nventilation systems of termite mounds. Conceived by\narchitect Mick Pearce and engineers at Arup Associates,\nthe building replicates the passive cooling mechanism\nobserved in termite mounds to regulate temperature.\nMirroring the chimneys and vents found in termite\nmounds, the Eastgate Centres design allows for efficient\ncirculation, enabling natural temperature control\nwithin the structure. This biomimetic approach not only\nreduces the buildings environmental impact but also\nhighlights the potential of learning from nature to create sustainable and\ninnovative architectural solutions.',
              style: TextStyle(
                color: Color(0xFFCFFF6D),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 850,
            left: 340.0,
            child: Container(
              color: Colors.black45,
              height: 50,
              width: 50,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/wmap');
                },
                child: Image.asset('assets/temp/earth.png', height: 30, width: 30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
