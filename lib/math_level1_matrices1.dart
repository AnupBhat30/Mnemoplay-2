import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:audioplayers/audioplayers.dart';

class MLevel1Page1 extends StatefulWidget {
  MLevel1Page1() : super();

  @override
  MLevel1Page1State createState() => MLevel1Page1State();
}
class MLevel1Page1State extends State<MLevel1Page1> with TickerProviderStateMixin {
  bool _showText = false;
  bool _showTypewriterText = false;
  bool _showTypewriterText2 = false;
  bool _showTypewriterText3=false;
  late AnimationController _controller;
  bool _showNextButton = false;
  late Animation<double> _animation;
  late AudioPlayer audioPlayer;


  @override
  void initState() {

    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeIn,
      ),
    );
    audioPlayer = AudioPlayer();
    _loadAudioAndAnimateText();
  }
  Future<void> _loadAudioAndAnimateText() async {
    await playAudio('assets/temp/grid.mp3');
    setState(() {
      _showText = true;
      _controller.forward();
    });
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      _showTypewriterText = true;
    });
    await Future.delayed(Duration(seconds: 3));
    playAudio('assets/temp/rowsandcolumns.mp3');
    setState(() {
      _showTypewriterText2 = true;
    });
    await Future.delayed(Duration(seconds: 2));
    playAudio('assets/temp/example.mp3');
    setState(() {
      _showTypewriterText3 = true;
    });
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      _showNextButton = true;
    });
  }
  Future<void> playAudio(String audioPath) async {
    int result = await audioPlayer.play(audioPath, isLocal: true);

    if (result == 1) {
      print("Audio started playing.");
    } else {
      print("Error playing audio");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        title: Center(
          child: Text(
            'What is a Matrix?',
            style: TextStyle(
              color: Color(0xFF907F9F),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xFF907F9F),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Center(
              child: Column(
                children: [
                  Center(child: Image.asset('assets/temp/matrix.png', )),

                  SizedBox(height: 20),
                  if (_showTypewriterText)
                    DefaultTextStyle(
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                      child: AnimatedTextKit(
                        isRepeatingAnimation: false,
                        repeatForever: false,
                        totalRepeatCount: 1,
                        animatedTexts: [
                          TypewriterAnimatedText(
                            'A matrix is like a grid of numbers or values arranged',
                            speed: const Duration(milliseconds: 51),
                          ),
                        ],
                      ),
                    ),
                  if (_showTypewriterText2)
                    DefaultTextStyle(
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                      child: AnimatedTextKit(
                        isRepeatingAnimation: false,
                        repeatForever: false,
                        totalRepeatCount: 1,
                        animatedTexts: [
                          TypewriterAnimatedText(
                            'in rows and columns',
                            speed: const Duration(milliseconds: 55),
                          ),
                        ],
                      ),
                    ),
                  if (_showTypewriterText3)
                    DefaultTextStyle(
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                      child: AnimatedTextKit(
                        isRepeatingAnimation: false,
                        repeatForever: false,
                        totalRepeatCount: 1,
                        animatedTexts: [
                          TypewriterAnimatedText(
                            'In the above example, there are 3 rows and 3 columns',
                            speed: const Duration(milliseconds: 55),
                          ),
                        ],
                      ),
                    ),
                  SizedBox(height: 155),
                  if (_showNextButton)
                    Positioned(
                      top:20,
                      right: 90,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/mlv1rp');
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
  @override
  void dispose() {
    _controller.dispose();
    audioPlayer.dispose();
    super.dispose();
  }
}
