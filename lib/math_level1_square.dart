import 'package:flutter/material.dart';

class MLevel1SquarePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: const Color(0xFFF7E7CE),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF6F4E37),
        title: Center(
          child: Text(
            'Square Matrix',
            style: TextStyle(
              color: Color(0xFFF7E7CE),
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body:Stack(
        children: [
          Positioned(
            top: 110,
            left: 30,
            child:Image.asset('assets/temp/m1s.png',
              width: 350,
              height: 200,
            ),
          ),
          Positioned(
            top: 110,
            left: 30,
            child:Text('A matrix with equal number of rows and columns\n                       is called a square matrix.',
              style:TextStyle(
                color: Color(0xFF6F4E37),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 200,
            left: 30,
            child:Text('     Determinant can be calculated for square \n                              matrices only.',
              style:TextStyle(
                color: Color(0xFF6F4E37),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 250,
            left: 30,
            child:Text('In the above example, the matrix B has 3 rows \n                            and 3 columns',
              style:TextStyle(
                color: Color(0xFF6F4E37),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 350,
            left: 30,
            child:Container(
              child:ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/mlv1dp');
                },
                style:ElevatedButton.styleFrom(
                  primary: const Color(0xFF6F4E37),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: Text('Next',
                  style:TextStyle(
                    color:Color(0xFFF7E7CE),
                  ),),
              ),
            ),
          ),
        ],
      ),
    );
  }

}