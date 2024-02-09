import 'dart:ui';
import 'package:flutter/material.dart';

class CHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF907F9F),
      floatingActionButton: Container(
        height: 50,
        width: 50,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/math');
          },
          child: Image.asset('assets/temp/math.png', height: 30, width: 30),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/temp/mnemomap.png'),
                  fit: BoxFit.cover,
                ),
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            Positioned(
              top: 120.0,
              left: 195.0,
              child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/mlv1');
                  },
                  child: Image.asset('assets/temp/level.png', height:45, width:45)
              ),
            ),
            Positioned(
              top: 235.0,
              left: 195.0,
              child: Image.asset('assets/temp/level.png', height:45, width:45),
            ),
            Positioned(
              top: 370.0,
              left: 195.0,
              child: Image.asset('assets/temp/level.png', height:45, width:45),
            ),
          ],
        ),
      ),
    );
  }
}