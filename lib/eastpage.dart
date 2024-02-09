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
              'assets/temp/eastgate1.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 700,
            left: 20,
            child: Text(
              'Eastgate\nCentre',
              style: TextStyle(
                color: Colors.white,
                fontSize: 70.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 830,
            left: 370,
            child: SizedBox(
              width: 50,
              height: 50,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/east1');
                },
                backgroundColor: Colors.white,
                child: Icon(Icons.arrow_forward),
              ),
            ),
          )
        ],
      ),
    );
  }
}


