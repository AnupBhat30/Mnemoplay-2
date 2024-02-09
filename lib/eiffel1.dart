import 'package:flutter/material.dart';

class Eiffel1Page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(


      backgroundColor: Color(0xFF1A1A1A),
      body: Stack(
        children: [
          Positioned(
            top: -110,
            left: 0,
            child: Image.asset(
              'assets/temp/eiffel1.jpg',
              width: 500,
              height: 500,
            ),
          ),
          Positioned(
            top: 290,
            left: 5,
            child: Text(
              'Sydney Opera House',
              style: TextStyle(
                color: Color(0xFFCFFF6D),
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 340,
            left: 5,
            child: Text(
              'Sydney, Australia',
              style: TextStyle(
                color: Color(0xFFCFFF6D),
                fontSize: 20.0,
              ),
            ),
          ),
          // Positioned Box with Text
          Positioned(
            top: 390,
            left: 5,
            child: SizedBox(
              height: 70,
              width: 180,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  '     Inspired by:\n   Orange Peels',
                  style: TextStyle(
                    color: Color(0xFFCFFF6D),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 390,
            left: 250,
            child: SizedBox(
              height: 70,
              width: 180,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  '           Built in:\n              1973',
                  style: TextStyle(
                    color: Color(0xFFCFFF6D),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 500,
            left: 5,
            child: SizedBox(
              height: 70,
              width: 180,
              child:
              Text('About this place', style: TextStyle(
                color: Color(0xFFCFFF6D),
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
          ),
          Positioned(
            top: 550,
            left: 5,
            child: Text('The Sydney Opera House, a masterpiece of modern architecture, \nshowcases a harmonious blend of human creativity \nand natures design principles, embodying the essence of\nbiomimicry.Danish architect Jørn Utzon, inspired by\norganic forms, drew from the intricacies of nature to\nshape this iconic structure. The shells of the Opera House,\nresembling the segments of an orange or the sails of a\nship, are reminiscent of the organic patterns found in the\nnatural world.',
              style: TextStyle(
                color: Color(0xFFCFFF6D),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 850,
            left: 340.0,
            child: Container(
              color: Colors.black.withOpacity(0.5),
              height: 50,
              width: 50,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/wmap');
                },
                child: Image.asset('assets/temp/earth.png', height: 30, width: 30),
              ),
            ),
          ),
        ],
      ),
    );
  }

}