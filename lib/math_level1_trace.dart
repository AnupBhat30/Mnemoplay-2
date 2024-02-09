import 'package:flutter/material.dart';

class MLevel1TracePage extends StatelessWidget{
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
            'Trace of a Diagonal Matrix',
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
            child:Image.asset('assets/temp/m1t.png',
              width: 350,
              height: 200,
            ),
          ),
          Positioned(
            top: 110,
            left: 30,
            child:Text('Trace of a diagonal matrix is the sum of elements \n                          in the main diagonal',
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
            child:Text('The trace of the above diagonal matrix is, 2+3+4 \n                         which is equal to 9',
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
                  Navigator.of(context).pushNamed('/mlv1trp');
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
