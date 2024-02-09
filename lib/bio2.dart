import 'package:flutter/material.dart';

class Bio2Page extends StatelessWidget {
  const Bio2Page({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFAB98F4),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/temp/turbine.png',
              height: 300,
              width: 600,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'How the Humpback Fins Inspired More Efficient Wind Turbines',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
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
                      color: Colors.white,
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
                    'Humpback whale fins have inspired more efficient wind turbines through biomimicry.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    ' The tubercles, small bumps on the leading edge of the whale\'s fins, reduce drag and increase lift, improving the aerodynamic performance',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Engineers have applied similar features to wind turbine blades, enhancing stability, adaptability to varying conditions, and overall efficiency. This biomimetic approach not only boosts energy production but also contributes to noise reduction and environmental sustainability.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
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
                          Navigator.of(context).pushNamed('/bio3');
                        },
                        backgroundColor: Colors.white,
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