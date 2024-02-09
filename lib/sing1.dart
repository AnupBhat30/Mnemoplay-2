import 'package:flutter/material.dart';

class Sing1Page extends StatelessWidget{
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
              'assets/temp/sing1.jpg',
              width: 500,
              height: 500,
            ),
          ),
          Positioned(
            top: 290,
            left: 5,
            child: Text(
              'Esplanade Theatre',
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
              'Singapore',
              style: TextStyle(
                color: Color(0xFFCFFF6D),
                fontSize: 20.0,
              ),
            ),
          ),
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
                  '     Inspired by:\n Durian Fruit',
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
                  '           Built in:\n              2002',
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
            child: Text('The Esplanade - Theatres on the Bay,\nsituated in Singapore, reflects an iconic architectural\nmarvel where elements of biomimicry are subtly\nintegrated. The twin durian-shaped domes of the\nEsplanade draw inspiration from the design principles\nobserved in the seed pods of the durian fruit,\na tropical delicacy in Southeast Asia.\nThe interconnected aluminium sunshades,\nresembling the segmented exterior of the durian,\nnot only contribute to the buildings unique and\naesthetically pleasing appearance but also serve a\nfunctional purpose. By emulating natures efficiency,\n',
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
