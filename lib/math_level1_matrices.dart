import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:audioplayers/audioplayers.dart';

class MLevel1Page extends StatefulWidget {
  const MLevel1Page({Key? key}) : super(key: key);
  @override
  State<MLevel1Page> createState() => _MLevel1PageState();
}

class _MLevel1PageState extends State<MLevel1Page>
    with TickerProviderStateMixin {
  bool _showText = false;
  bool _showTypewriterText = false;
  bool _showTypewriterText2 = false;
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
    await playAudio('assets/temp/inthissession.mp3');

    setState(() {
      _showText = true;
      _controller.forward();
    });
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      _showTypewriterText = true;
    });
    await Future.delayed(Duration(seconds: 4));
    playAudio('assets/temp/alongwith.mp3');
    setState(() {
      _showTypewriterText2 = true;
    });
    await Future.delayed(Duration(seconds: 3));
    setState(() {
      _showNextButton = true;
    });
  }

  Future<void> playAudio(String audioPath) async {
    try {
      await audioPlayer.play(AssetSource(audioPath));
      print("Audio started playing.");
    } catch (e) {
      print("Error playing audio: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF907F9F),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (_showText)
                  FadeTransition(
                    opacity: _animation,
                    child: Text(
                      'Level 1\nTypes Of Matrices',
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                SizedBox(height: 120.0),
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
                          'In this session, we will look at various matrices',
                          speed: const Duration(milliseconds: 48),
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
                          'along with some examples',
                          speed: const Duration(milliseconds: 55),
                        ),
                      ],
                    ),
                  ),
                SizedBox(height: 240),
                if (_showNextButton)
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/mlv1p1');
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
              ],
            ),
          ),
        ],
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
