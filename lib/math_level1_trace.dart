import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:audioplayers/audioplayers.dart';
class MLevel1TracePage extends StatefulWidget {
  const MLevel1TracePage({Key? key}) : super(key: key);
  @override
  State<MLevel1TracePage> createState() => _MLevel1TracePageState();
}

class _MLevel1TracePageState extends State<MLevel1TracePage> with TickerProviderStateMixin{
  bool _showText = false;
  bool _showTypewriterText = false;
  bool _showTypewriterText2 = false;
  bool _showTypewriterText3=false;
  bool _showTypewriterText4=false;
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
    await playAudio('assets/temp/trace1.mp3');
    setState(() {
      _showText = true;
      _controller.forward();
    });
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      _showTypewriterText = true;
    });
    await Future.delayed(Duration(seconds:3));
    playAudio('assets/temp/trace2.mp3');
    setState(() {
      _showTypewriterText2 = true;
    });
    await Future.delayed(Duration(seconds: 3));
    playAudio('assets/temp/trace3.mp3');
    setState(() {
      _showTypewriterText3 = true;
    });
    await Future.delayed(Duration(seconds: 5));
    playAudio('assets/temp/trace4.mp3');
    setState(() {
      _showTypewriterText4 = true;
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
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        title: Center(
          child: Text(
            'Trace of a Diagonal Matrix',
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
                  Center(child: Image.asset('assets/temp/diagonalmatrix.png')),

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
                            'Trace of a diagonal matrix is the sum of elements in the',
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
                            'main diagonal',
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
                            'The trace of the above diagonal matrix is, 2+3+4 which',
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
                            'is equal to 9',
                            speed: const Duration(milliseconds: 55),
                          ),
                        ],
                      ),
                    ),
                  SizedBox(height: 135),
                  if (_showNextButton)
                    Positioned(
                      top:20,
                      right: 90,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/mlv1trp');
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