import 'package:flutter/material.dart';

class Bio3Page extends StatelessWidget {
  const Bio3Page({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF12181F),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/temp/snake.png',
              height: 300,
              width: 600,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'How Snake Skin Inspired Shoe Grips with Better Friction',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFD0CEB1),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFD0CEB1),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'The unique properties of snake skin have inspired the development of shoe grips with improved friction through biomimicry. Snakes exhibit remarkable agility and traction on various surfaces due to the microstructures on their scales. Researchers have replicated these features in shoe designs to enhance grip and stability. This biomimetic approach not only improves performance but also emphasizes the efficiency of learning from natures designs for practical applications in everyday life.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFFD0CEB1),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: SizedBox(
                      width: 150,
                      child: FloatingActionButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/bio4');
                        },
                        backgroundColor: Color(0xFFD0CEB1),
                        child: Icon(Icons.arrow_forward),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}