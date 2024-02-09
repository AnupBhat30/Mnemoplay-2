import 'package:flutter/material.dart';

class MLevel1DiagonalPage extends StatelessWidget{
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
            'Diagonal Matrix',
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
            left: 40,
            child:Image.asset('assets/temp/m1d.png',
              width: 350,
              height: 200,
            ),
          ),
          Positioned(
            top: 410,
            left: 20,
            child:Text('A diagonal matrix is a square matrix in which \nall  elements outside the main diagonal\nare zero.',
              style:TextStyle(
                color: Color(0xFF6F4E37),
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 510,
            left: 20,
            child:Text('The main diagonal consists of elements\nthat run from the top left corner to the\nbottom right corner.',
              style:TextStyle(
                color: Color(0xFF6F4E37),
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Positioned(
            top: 700,
            left: 140,
            child:Container(
              child:ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/mlv1tp');
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
  }}