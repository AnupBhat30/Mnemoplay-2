import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:audioplayers/audioplayers.dart';
class MLevel1ColumnPage extends StatefulWidget {
  const MLevel1ColumnPage({Key? key}) : super(key: key);
  @override
  State<MLevel1ColumnPage> createState() => _MLevel1ColumnPageState();
}

class _MLevel1ColumnPageState extends State<MLevel1ColumnPage> with TickerProviderStateMixin{
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
    await playAudio('assets/temp/columnmatrix1.mp3');
    setState(() {
      _showText = true;
      _controller.forward();
    });
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      _showTypewriterText = true;
    });
    await Future.delayed(Duration(milliseconds: 2800));
    playAudio('assets/temp/columnmatrix2.mp3');
    setState(() {
      _showTypewriterText2 = true;
    });
    await Future.delayed(Duration(seconds: 2));
    playAudio('assets/temp/columnmatrix3.mp3');
    setState(() {
      _showTypewriterText3 = true;
    });
    await Future.delayed(Duration(seconds: 3));
    playAudio('assets/temp/columnmatrix4.mp3');
    setState(() {
      _showTypewriterText4 = true;
    });
    await Future.delayed(Duration(seconds: 1));
    playAudio('assets/temp/columnmatrix5.mp3');
    setState(() {
      _showTypewriterText5 = true;
    });
    await Future.delayed(Duration(seconds: 4));
    playAudio('assets/temp/columnmatrix6.mp3');
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
            'Column Matrix',
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
                  Center(child: Image.asset('assets/temp/columnmatrix.png')),

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
                            'A matrix having only 1 column is called a column',
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
                            'matrix.',
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
                            'The matrix can have n number of rows but only 1',
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
                            'column.',
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
                            'In the above example, the matrix has 1 column and 3',
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
                            'rows.',
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
                          Navigator.of(context).pushNamed('/mlv1sp');
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
