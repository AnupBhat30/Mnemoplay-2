import 'package:flutter/material.dart';

class ChooseMath extends StatelessWidget{
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xFF6F4E37),
          title: Center(
            child: Text(
              'Math',
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xFFF7E7CE),
      body:Stack(
        children: [
          Positioned(
            top: 335,
            left: 30,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/mhome');
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF6F4E37),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                minimumSize: Size(170, 180),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/temp/mathh1.png',
                    width: 110,
                    height: 110,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Learn',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
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
                Navigator.of(context).pushNamed('/pvp');
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF6F4E37),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                minimumSize: Size(170, 180),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/temp/pvp.png',
                    width: 110,
                    height: 110,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'PVP',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
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