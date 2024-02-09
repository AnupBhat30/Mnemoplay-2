import 'package:flutter/material.dart';
import 'package:learning/ar.dart';
import 'package:learning/bird.dart';
import 'package:learning/bird1.dart';
import 'package:learning/eden.dart';
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
import 'package:learning/sing.dart';
import 'package:learning/sing1.dart';
import 'package:learning/userpage.dart';
import 'package:learning/biopage.dart';
import 'package:learning/mathhomepage.dart';
import 'package:learning/chomepage.dart';
import 'package:learning/math_level1_matrices.dart';
import 'package:learning/math_level1_matrices1.dart';
import 'package:learning/math_level1_row.dart';
import 'package:learning/worldmap.dart';
import 'arch.dart';
import 'eden1.dart';
import 'eiffel.dart';
import 'eiffel1.dart';
import 'math_level1_column.dart';
import 'math_level1_diagonal.dart';
import 'math_level1_square.dart';
import 'math_level1_trace.dart';
import 'package:learning/bio1.dart';
import 'package:learning/bio2.dart';
import 'package:learning/bio3.dart';
import 'package:learning/bio4.dart';
import 'package:learning/bio5.dart';
import 'package:learning/bioquiz.dart';
import 'package:learning/biopage.dart';
import 'package:learning/worldmap.dart';
import 'package:learning/eastpage.dart';
import 'package:learning/eastpage1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(
                color:Color(0xFF907F9F)
            )
        ),
        fontFamily: 'Urbanist',
      ),
      initialRoute: '/logo',
      routes: {
        '/login': (context) => LoginPage(),
        '/main':(context)=>MainPage(username: '',),
        /*'/math':(context)=>MathPage(),*/
        '/c':(context)=>CPage(),
        '/logo': (context) => LogoScreen(),
        '/mlv1': (context) => const MLevel1Page(),
        '/mlv1p1': (context) => MLevel1Page1(),
        '/mlv1rp': (context) => const MLevel1RowPage(),
        '/mlv1cp': (context) => const MLevel1ColumnPage(),
        '/mlv1sp': (context) => const MLevel1SquarePage(),
        '/mlv1dp': (context) => const MLevel1DiagonalPage(),
        '/mlv1tp': (context) => const MLevel1TracePage(),
        '/mlv1trp': (context) => const MLevel1TriangularPage(),
        '/mlv1ip': (context)=> const MLevel1IdentityPage(),
        '/mlv1zp': (context)=>const MLevel1Zero(),
        '/m1quiz': (context)=>const MLevel1Quiz(),
        '/ar': (context)=> ArchPage(),
        '/bio1': (context)=>const Bio1Page(),
        '/bio2': (context)=>const Bio2Page(),
        '/bio3': (context)=>const Bio3Page(),
        '/bio4': (context)=>const Bio4Page(),
        '/bio5': (context)=>const Bio5Page(),
        '/bioq': (context)=>const BioQuiz(),
        '/bio': (context)=> BioPage(),
        '/lead': (context)=> LeaderboardPage(username: '', points: 0,),
        '/user': (context)=> UserPage(username: '',),
        '/wmap': (context)=> WorldMapPage(),
        '/east': (context)=> EastPage(),
        '/east1': (context)=> EastPage1(),
        '/eden': (context)=> EdenPage(),
        '/eden1': (context)=> Eden1Page(),
        '/bird': (context)=> BirdPage(),
        '/bird1': (context)=> BirdPage1(),
        '/sing': (context)=> SingPage(),
        '/sing1': (context)=> Sing1Page(),
        '/eiffel': (context)=> EiffelPage(),
        '/eiffel1': (context)=> Eiffel1Page(),
        '/mhome': (context)=> MathHome(),
        '/arr': (context)=> ARPage(),

      },
    );
  }
}