import 'package:flutter/material.dart';

class Bio4Page extends StatelessWidget {
  const Bio4Page({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6B0B0),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/temp/slug.png',
              height: 300,
              width: 600,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'How Slug Slime Inspired Sticky Surgical Glue',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
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
                      color: Colors.black,
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
                    'Slug slime has inspired the development of a sticky surgical glue through biomimicry. The adhesive properties of slug slime, particularly its ability to adhere to wet and dynamic surfaces, have been harnessed for medical applications. Researchers have replicated the composition of the slime to create a biocompatible and versatile adhesive that can be used in surgeries to seal wounds, replace sutures, and adhere to tissues even in the presence of bodily fluids. This biomimetic approach offers a promising solution for improving medical adhesives, making them more effective and adaptable in challenging surgical conditions.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
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
                          Navigator.of(context).pushNamed('/bio5');
                        },
                        backgroundColor: Colors.black,
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