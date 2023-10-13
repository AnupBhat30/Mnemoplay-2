import 'package:flutter/material.dart';
<<<<<<< HEAD
class MathHome extends StatelessWidget{
=======

class MathHome extends StatelessWidget {
>>>>>>> eeefc354556e6100309bf22e781446a336131e4b
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
<<<<<<< HEAD
      floatingActionButton: Container(
        height:50,
        width:50,
        child: FloatingActionButton(
          onPressed: (){
            Navigator.pushNamed(context, '/c');
          },
          child:Image.asset('assets/temp/c.png', height:30, width:30)
        ),
      ),
=======
        floatingActionButton: Container(
          height: 50,
          width: 50,
          child: FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, '/c');
              },
              child: Image.asset('assets/temp/c.png', height: 30, width: 30)),
        ),
>>>>>>> eeefc354556e6100309bf22e781446a336131e4b
        backgroundColor: Color(0xFF907F9F),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 10),
              Image.asset(
                'assets/temp/math.png',
                height: 40,
                width: 40,
              ),
              Text(
                'Math',
                style: TextStyle(
                  color: Color(0xFF907F9F),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
<<<<<<< HEAD
        )
    );
  }

}
=======
        ));
  }
}
>>>>>>> eeefc354556e6100309bf22e781446a336131e4b
