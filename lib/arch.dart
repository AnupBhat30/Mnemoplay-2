import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class ArchPage extends StatefulWidget {
  const ArchPage({Key? key}) : super(key: key);

  @override
  State<ArchPage> createState() => _ArchPageState();
}

class _ArchPageState extends State<ArchPage> with TickerProviderStateMixin {
  bool _showText1 = false;
  bool _showText2 = false;
  bool _showButton = false; // New variable to control button visibility

  @override
  void initState() {
    super.initState();
    _startText1Animation();
  }

  void _startText1Animation() {
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _showText1 = true;
      });

      // Add another delay for the duration of the first text animation
      Future.delayed(Duration(seconds: 2), () {
        _startText2Animation();
      });
    });
  }

  void _startText2Animation() {
    setState(() {
      _showText2 = true;
    });

    // Add a delay for the duration of the second text animation
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _showButton = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        title: Center(
          child: Text(
            'Architecture',
            style: TextStyle(
              color: Colors.green,
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.green,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height:150,
          ),
          AnimatedOpacity(
            opacity: _showText1 ? 1.0 : 0.0,
            duration: Duration(seconds: 1),
            child: _showText1
                ? Center(
              child: Text(
                'Let us look at some structures that',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            )
                : SizedBox.shrink(),
          ),
          SizedBox(height: 20),
          AnimatedOpacity(
            opacity: _showText2 ? 1.0 : 0.0,
            duration: Duration(seconds: 1),
            child: _showText2
                ? Text(
              'are inspired by nature',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )
                : SizedBox.shrink(),
          ),
          SizedBox(height: 250),
          if (_showButton)
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/wm');
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.orange),
                shape: MaterialStateProperty.all(StadiumBorder()),
              ),
              child: Text(
                'Next',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            )
        ],
      ),
    );
  }
}
