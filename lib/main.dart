import 'package:flutter/material.dart';
import 'package:learning/loginpage.dart';
import 'package:learning/mainpage.dart';
import 'package:learning/math_level1_identity.dart';
import 'package:learning/math_level1_quiz.dart';
import 'package:learning/math_level1_row.dart';
import 'package:learning/math_level1_triangular.dart';
import 'package:learning/math_level1_zero.dart';
import 'package:learning/mathpage.dart';
import 'package:learning/cpage.dart';
import 'package:learning/logopage.dart';
import 'package:learning/leaderboard.dart';
import 'package:learning/userpage.dart';
import 'package:learning/biopage.dart';
import 'package:learning/mathhomepage.dart';
import 'package:learning/chomepage.dart';
import 'package:learning/math_level1_matrices.dart';
import 'package:learning/math_level1_matrices1.dart';
import 'package:learning/math_level1_row.dart';
import 'math_level1_column.dart';
import 'math_level1_diagonal.dart';
import 'math_level1_square.dart';
import 'math_level1_trace.dart';
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
        '/mlv1': (context) => MLevel1Page(),
        '/mlv1p1': (context) => MLevel1Page1(),
        '/mlv1rp': (context) => MLevel1RowPage(),
        '/mlv1cp': (context) => MLevel1ColumnPage(),
        '/mlv1sp': (context) => MLevel1SquarePage(),
        '/mlv1dp': (context) => MLevel1DiagonalPage(),
        '/mlv1tp': (context) => MLevel1TracePage(),
        '/mlv1trp': (context) => MLevel1TriangularPage(),
        '/mlv1ip': (context)=> MLevel1IdentityPage(),
        '/mlv1zp': (context)=>MLevel1Zero(),
        '/m1quiz': (context)=>MLevel1Quiz(),
      },
    );
  }
}

