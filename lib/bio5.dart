import 'package:flutter/material.dart';

class Bio5Page extends StatelessWidget {
  const Bio5Page({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF167055),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/temp/gecko.png',
              height: 300,
              width: 600,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'How the Gecko’s Feet Inspired Non-toxic Glue-less Adhesives',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFF4C56E),
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
                      color: Color(0xFFF4C56E),
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
                    'The adhesive properties of a geckos feet have inspired the development of non-toxic and glue-less adhesives through biomimicry. The microscopic setae on a geckos feet create a van der Waals force, allowing them to adhere to surfaces without the need for adhesives. Engineers have mimicked this natural mechanism to create synthetic adhesives that provide strong yet easily detachable bonds. By drawing inspiration from the gecko, scientists have developed environmentally friendly, residue-free adhesives for various applications.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFFF4C56E),
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
                          Navigator.of(context).pushNamed('/bio');
                        },
                        backgroundColor: Color(0xFFF4C56E),
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