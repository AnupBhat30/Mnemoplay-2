import 'package:flutter/material.dart';

class EastPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/temp/ef.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 730,
            left: 14,
            child: Text(
              'Eiffel\nTower',
              style: TextStyle(
                color: Colors.white,
                fontSize: 60.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
