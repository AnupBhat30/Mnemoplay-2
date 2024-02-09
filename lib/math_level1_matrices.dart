import 'package:flutter/material.dart';


class MLevel1Page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: const Color(0xFFF7E7CE),
      appBar: AppBar(
        backgroundColor: const Color(0xFF6F4E37),
        title: Center(
          child: Text(
            'Types of Matrices',
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
            top: 320,
            left: 15,
            child:Text('In this session, we will look at various matrices\n               along with some examples',
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
                  Navigator.of(context).pushNamed('/mlv1p1');
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