import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:audioplayers/audioplayers.dart';
class MLevel1IdentityPage extends StatefulWidget {
  const MLevel1IdentityPage({Key? key}) : super(key: key);
  @override
  State<MLevel1IdentityPage> createState() => _MLevel1IdentityPageState();
}

class _MLevel1IdentityPageState extends State<MLevel1IdentityPage> with TickerProviderStateMixin{
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
    await playAudio('assets/temp/i1.mp3');
    setState(() {
      _showText = true;
      _controller.forward();
    });
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      _showTypewriterText = true;
    });
    await Future.delayed(Duration(milliseconds:3400));
    playAudio('assets/temp/i2.mp3');
    setState(() {
      _showTypewriterText2 = true;
    });
    await Future.delayed(Duration(milliseconds: 3500));
    playAudio('assets/temp/i3.mp3');
    setState(() {
      _showTypewriterText3 = true;
    });
    await Future.delayed(Duration(milliseconds: 3900));
    playAudio('assets/temp/i4.mp3');
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
            'Identity Matrix',
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
                  Center(child: Image.asset('assets/temp/identity.png')),

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
                            'It is a special matrix, in which all elements on the main',
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
                            'diagonal are equal to 1 and the rest elements are 0.',
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
                            'The above matrix is denoted as I subscript 3, as the',
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
                            'number of rows and columns are 3.',
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
                          Navigator.of(context).pushNamed('/mlv1zp');
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