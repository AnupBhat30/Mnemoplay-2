import 'package:flutter/material.dart';

class CHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        floatingActionButton: Container(
          height: 50,
          width: 50,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, '/math');
            },
            child: Image.asset('assets/temp/math.png', height: 30, width: 30),
          ),
        ),
        backgroundColor: Color(0xFF907F9F),
        appBar: AppBar(
          leading:null,
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 10),
              Image.asset(
                'assets/temp/c.png',
                height: 40,
                width: 40,
              ),
              Text(
                'C',
                style: TextStyle(
                  color: Color(0xFF907F9F),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ));
  }
}
