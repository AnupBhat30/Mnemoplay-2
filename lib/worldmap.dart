import 'dart:ui';
import 'package:flutter/material.dart';

class WorldMapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Center(
          child: Stack(
            children: [
              Image.asset('assets/temp/wmap.png'),
              Transform.translate(
                offset: Offset(720, 600),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/east');
                  },
                  child: Image.asset(
                    'assets/temp/l1.png',
                    width: 70,
                    height: 70,
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(595, 195),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/eden');
                  },
                  child: Image.asset(
                    'assets/temp/l2.png',
                    width: 70,
                    height: 70,
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(1075, 240),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/bird');
                  },
                  child: Image.asset(
                    'assets/temp/l3.png',
                    width: 70,
                    height: 70,
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(1040, 445),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/sing');
                  },
                  child: Image.asset(
                    'assets/temp/l4.png',
                    width: 70,
                    height: 70,
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(1200, 650),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/eiffel');
                  },
                  child: Image.asset(
                    'assets/temp/l5.png',
                    width: 70,
                    height: 70,

                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
