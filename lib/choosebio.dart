import 'package:flutter/material.dart';

class ChooseBio extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/bio');
        },
        child: Icon(Icons.nature),
        backgroundColor: Color(0xFFF4C56E),
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xFF167055),
          title: Center(
            child: Text(
              'Quiz',
              style: TextStyle(
                color: Color(0xFFF4C56E),
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xFFF4C56E),
      body:Stack(
        children: [
          Positioned(
            top: 335,
            left: 30,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/bioq');
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF167055),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
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
                    'Quiz',
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
                Navigator.of(context).pushNamed('/bpvp');
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF167055),
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
                    'Guess it right!',
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