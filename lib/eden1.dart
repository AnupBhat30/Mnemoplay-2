import 'package:flutter/material.dart';

class Eden1Page extends StatelessWidget{
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
              'assets/temp/eden1.JPG',
              width: 500,
              height: 500,
            ),
          ),
          Positioned(
            top: 290,
            left: 5,
            child: Text(
              'Eden Project',
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
              'Cornwall, United Kingdom',
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
                  '     Inspired by:\n Soap Bubbles',
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
                  '           Built in:\n              2001',
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
            child:
            Text('The Eden Project in the United Kingdom stands as a\nstriking testament to biomimicry in architecture.\nInspired by the resilient and lightweight structure of\nsoap bubbles, the ETFE cushions of the biomes at the\nEden Project create a unique and efficient architectural\ndesign. The transparent, inflated bubbles not only\nmaximize natural light penetration but also contribute to\nthe buildings thermal regulation. This biomimetic\napproach, championed by architect\nSir Nicholas Grimshaw,\ndemonstrates how emulating natures design\nprinciples can result in sustainable, aesthetically\npleasing structures. The Eden Project showcases\nthe harmonious integration of environmental\nconsciousness and architectural innovation',
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
