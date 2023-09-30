import 'package:flutter/material.dart';
import 'package:learning/loginpage.dart';
import 'package:learning/mainpage.dart';
import 'package:learning/mathpage.dart';
import 'package:learning/cpage.dart';
import 'package:learning/logopage.dart';
import 'package:learning/userpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color:Color(0xFF907F9F)
          )
        ),
        fontFamily: 'Urbanist',
      ),
      initialRoute: '/logo',
      routes: {
        '/login': (context) => LoginPage(),
        '/main':(context)=>MainPage(),
        '/math':(context)=>MathPage(),
        '/c':(context)=>CPage(),
        '/logo': (context) => LogoScreen(),
      },
    );
  }
}

