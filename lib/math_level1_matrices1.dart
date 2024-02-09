import 'package:flutter/material.dart';

class MLevel1Page1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      backgroundColor: const Color(0xFFF7E7CE),
      appBar: AppBar(
        backgroundColor: const Color(0xFF6F4E37),
        title: Center(
          child: Text(
            'What is a matrix?',
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
            child:Image.asset('assets/temp/m1.png',
              width: 350,
              height: 200,
            ),
          ),
          Positioned(
            top: 110,
            left: 30,
            child:Text('A matrix is like a grid of numbers or values \n           arranged in rows and columns.',
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
            child:Text('In the above example, there are 3 rows and 3\n                                columns',
              style:TextStyle(
                color: Color(0xFF6F4E37),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 270,
            left: 30,
            child:Container(

              child:ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/mlv1rp');
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