import 'package:flutter/material.dart';

class BioPage extends StatelessWidget{
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
      body:Stack(
          children:[
            Container(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                'assets/temp/biomimicry.png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 335,
              left: 30,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/bio1');
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF167055),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  minimumSize: Size(170, 180),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/temp/nature.png',
                      width: 110,
                      height: 110,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Biomimicry',
                      style: TextStyle(
                        color: Color(0xFFF4C56E),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 335,
              left: 230,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/cb');
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF167055),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  minimumSize: Size(170, 180),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/temp/exam.png',
                      width: 110,
                      height: 110,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Quiz',
                      style: TextStyle(
                        color: Color(0xFFF4C56E),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 550,
              left: 230,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/arr');
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF167055),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  minimumSize: Size(170, 180),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/temp/ar.png',
                      width: 110,
                      height: 110,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'AR',
                      style: TextStyle(
                        color: Color(0xFFF4C56E),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 550,
              left: 30,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/ar');
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF167055),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  minimumSize: Size(170, 180),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/temp/tower.png',
                      width: 110,
                      height: 110,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Architecture',
                      style: TextStyle(
                        color: Color(0xFFF4C56E),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]
      ),
    );
  }

}