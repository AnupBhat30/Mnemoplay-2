import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:audioplayers/audioplayers.dart';
class MLevel1SquarePage extends StatefulWidget {
  const MLevel1SquarePage({Key? key}) : super(key: key);
  @override
  State<MLevel1SquarePage> createState() => _MLevel1SquarePageState();
}

class _MLevel1SquarePageState extends State<MLevel1SquarePage> with TickerProviderStateMixin{
  bool _showText = false;
  bool _showTypewriterText = false;
  bool _showTypewriterText2 = false;
  bool _showTypewriterText3=false;
  bool _showTypewriterText4=false;
  bool _showTypewriterText5=false;
  bool _showTypewriterText6=false;
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
    await playAudio('assets/temp/squarematrix1.mp3');
    setState(() {
      _showText = true;
      _controller.forward();
    });
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      _showTypewriterText = true;
    });
    await Future.delayed(Duration(seconds: 3));
    playAudio('assets/temp/squarematrix2.mp3');
    setState(() {
      _showTypewriterText2 = true;
    });
    await Future.delayed(Duration(seconds: 2));
    playAudio('assets/temp/squarematrix3.mp3');
    setState(() {
      _showTypewriterText3 = true;
    });
    await Future.delayed(Duration(milliseconds: 3800));
    playAudio('assets/temp/squarematrix4.mp3');
    setState(() {
      _showTypewriterText4 = true;
    });
    await Future.delayed(Duration(seconds: 4));
    playAudio('assets/temp/squarematrix5.mp3');
    setState(() {
      _showTypewriterText5 = true;
    });
    await Future.delayed(Duration(seconds: 4));
    playAudio('assets/temp/squarematrix6.mp3');
    setState(() {
      _showTypewriterText6 = true;
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
            'Square Matrix',
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
                  Center(child: Image.asset('assets/temp/squarematrix.png')),

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
                            'A matrix with equal number of rows and columns is',
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
                            'called a square matrix',
                            speed: const Duration(milliseconds: 51),
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
                            'The determinant, which is a concept we will learn about',
                            speed: const Duration(milliseconds: 55),
                          ),
                        ],
                      ),
                    ),
                  if (_showTypewriterText4)
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
                            'later, can only be calculated for square matrices',
                            speed: const Duration(milliseconds: 55),
                          ),
                        ],
                      ),
                    ),
                  if (_showTypewriterText5)
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
                            'In the above example, the matrix has 3 rows and 3',
                            speed: const Duration(milliseconds: 55),
                          ),
                        ],
                      ),
                    ),
                  if (_showTypewriterText6)
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
                            'columns',
                            speed: const Duration(milliseconds: 55),
                          ),
                        ],
                      ),
                    ),
                  SizedBox(height: 80),
                  if (_showNextButton)
                    Positioned(
                      top:20,
                      right: 90,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/mlv1dp');
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

}