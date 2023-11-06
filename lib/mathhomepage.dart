import 'package:flutter/material.dart';
class MathHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xFF907F9F),
      floatingActionButton: Container(
        height: 50,
        width: 50,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/c');
          },
          child: Image.asset('assets/temp/c.png', height: 30, width: 30),
        ),
      ),
      body: Stack(
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
            left: 230.0,
            child: Stack(
              alignment: Alignment.center,
              children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/mlv1');
                          },
                        child: Image.asset('assets/temp/level.png', height:45, width:45)
                    ),
                Positioned(
                  top: 10,
                  child: Text(
                    '1', style: TextStyle(
                    color: Colors.blue,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
                  ],
            ),
            ),
          Positioned(
            top: 235.0,
            left: 230.0,
            child: Stack(
              alignment: Alignment.center,
              children: [
                    GestureDetector(
                onTap: () {
                      Navigator.pushNamed(context, '/');},
                    child: Image.asset('assets/temp/level.png', height:45, width:45)
                    ),
                Text(
                    '2', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
                ),
                  ],
            ),
          ),
          Positioned(
            top: 370.0,
            left: 230.0,
            child: Stack(
              alignment: Alignment.center,
              children: [
                    GestureDetector(
                onTap: () {
                      Navigator.pushNamed(context, '/');},
                    child: Image.asset('assets/temp/level.png', height:45, width:45)
                    ),
                Text('3',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
                )
                  ],
            ),
          ),
        ],
      ),
    );
  }
}
