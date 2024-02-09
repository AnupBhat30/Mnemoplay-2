import 'package:flutter/material.dart';

class ArchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCBCBCB),


      body: Stack(
        children: [
       //   0xFF9A8E67 0xFFCBCBCB
          Positioned(
            top: 170,
            left: 120,
            child: Container(
              width: 300.0,
              height: 650.0,
              color: Color(0xFF9A8E67),
            ),
          ),
          Positioned(
            top: 250,
            left: 30,
            child: Text(
              'ARCHITECTURE',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 130,
            child: Image.asset('assets/temp/italy.png',
              width: 400,
              height: 200,
            ),
          ),
          Positioned(
            top: 350,
            left: -100,
            child: Image.asset('assets/temp/paris.png',
              width: 410,
              height: 200,
            ),
          ),
          Positioned(
            top: 400,
            left: 190,
            child: Text(
              '       Let us look\nat some architecture \n  inspired by nature',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 600,
            left: 30,
            child: Image.asset('assets/temp/sen.png',
              width: 250,
              height: 150,
            ),
          ),

            Positioned(
              top: 835,
              left: 350,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/wmap');
                },
                backgroundColor: Color(0xFF9A8E67),
                child: Icon(Icons.arrow_forward),
              ),
            ),

        ],
      ),
    );
  }
}
