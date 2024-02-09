import 'package:flutter/material.dart';

class MLevel1IdentityPage extends StatelessWidget{
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
            'Identity Matrix',
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
            child:Image.asset('assets/temp/m1i.png',
              width: 350,
              height: 200,
            ),
          ),
          Positioned(
            top: 410,
            left: 40,
            child:Text('It is a special matrix, in which all\nelements on the main diagonal\nare 1 and rest elements are 0.',
              style:TextStyle(
                color: Color(0xFF6F4E37),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 510,
            left: 40,
            child:Text('The above matrix is denoted as I\nsubscript 3, as the number of rows\nand columns are 3.',
              style:TextStyle(
                color: Color(0xFF6F4E37),
                fontSize: 20,
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
                  Navigator.of(context).pushNamed('/mlv1zp');
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