import 'package:flutter/material.dart';

class ARPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: Container(
        height: 50,
        width: 50,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/bio');
          },
          child: Image.asset('assets/temp/home1.png', height: 30, width: 30),
        ),
      ),
      backgroundColor: Color(0xFF167055),
      body: Stack(
        children: [
          Positioned(
            top: 60,
            left: 80,
            child: Text('Scan the QR code to get the\n            AR experience', style: TextStyle(
              color: Color(0xFFF4C56E),
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
          Positioned(
            top: 150,
            left: 150,
            child: Image.asset('assets/temp/edenar.png',
              height: 150 ,
              width: 150,
            ),
          ),
          Positioned(
            top: 300,
            left: 170,
            child: Text('Eden Project', style: TextStyle(
              color: Color(0xFFF4C56E),
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
          Positioned(
            top: 400,
            left: 150,
            child: Image.asset('assets/temp/bulletar.png',
              height: 150 ,
              width: 150,
            ),
          ),
          Positioned(
            top: 550,
            left: 170,
            child: Text('Bullet Train', style: TextStyle(
              color: Color(0xFFF4C56E),
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
          Positioned(
            top: 650,
            left: 150,
            child: Image.asset('assets/temp/eiffelar.png',
              height: 150 ,
              width: 150,
            ),
          ),
          Positioned(
            top: 810,
            left: 170,
            child: Text('Eiffel Tower', style: TextStyle(
              color: Color(0xFFF4C56E),
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
        ],
      ),
    );
  }

}
