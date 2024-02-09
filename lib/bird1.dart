import 'package:flutter/material.dart';

class BirdPage1 extends StatelessWidget{
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
              'assets/temp/bird1.jpg',
              width: 500,
              height: 500,
            ),
          ),
          Positioned(
            top: 290,
            left: 5,
            child: Text(
              'Birds Nest Stadium',
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
              'Beijing, China',
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
                  '     Inspired by:\n Bird Nests',
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
                  '           Built in:\n              2008',
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
            child: Text('The Birds Nest Stadium, officially known as the Beijing\nNational Stadium in China,\nexemplifies biomimicry in architectural design.\nInspired by the intricate and sturdy construction of a\nbirds nest, the stadiums unique lattice-like structure\nnot only provides an iconic and visually striking\nappearance but also optimizes both form and function.\nThe design draws from the birds nests ability to balance\ncomplexity and strength,resulting in a visually stunning\nand structurally sound arena. Created for the 2008\nSummer Olympics,this architectural marvel showcases\nhow biomimicry principles can be applied to create\nnot only aesthetically pleasing but also highly functional\nand innovative structures.',
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
