import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class BioPage extends StatefulWidget {
  const BioPage({Key? key}) : super(key: key);

  @override
  _BioPageState createState() => _BioPageState();
}

class _BioPageState extends State<BioPage> with TickerProviderStateMixin {
  late AudioPlayer audioPlayer;
  late AudioPlayer hoverAudioPlayer;
  bool isHovering = false;

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
    hoverAudioPlayer = AudioPlayer();
    playAudio();
  }

  void playAudio() async {
    try {
      await audioPlayer.play(AssetSource('assets/temp/forest.mp3'));
      print('Forest audio played');
    } catch (e) {
      print('Error playing forest audio: $e');
    }
  }

  void stopAudio() async {
    await audioPlayer.stop();
  }

  void playRiverAudio() async {
    try {
      await hoverAudioPlayer.play(AssetSource('assets/temp/river.mp3'));
      print('River audio played');
      audioPlayer.setVolume(0.5);
    } catch (e) {
      print('Error playing river audio: $e');
    }
  }

  void stopRiverAudio() async {
    await hoverAudioPlayer.stop();
  }

  void playCricketAudio() async {
    try {
      await hoverAudioPlayer.play(AssetSource('assets/temp/cricket.mp3'));
      print('Cricket audio played');
    } catch (e) {
      print('Error playing cricket audio: $e');
    }
  }

  void stopCricketAudio() async {
    await hoverAudioPlayer.stop();
  }

  void playFrogAudio() async {
    try {
      await hoverAudioPlayer.play(AssetSource('assets/temp/frogs.mp3'));
      print('Frog audio played');
    } catch (e) {
      print('Error playing frog audio: $e');
    }
  }

  void stopFrogAudio() async {
    await hoverAudioPlayer.stop();
  }

  void playOwlAudio() async {
    try {
      await hoverAudioPlayer.play(AssetSource('assets/temp/owl.mp3'));
      print('Owl audio played');
    } catch (e) {
      print('Error playing owl audio: $e');
    }
  }

  void stopOwlAudio() async {
    await hoverAudioPlayer.stop();
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    hoverAudioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF907F9F),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/temp/biomimicry.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 150),
                SizedBox(
                  width: 200,
                  child: MouseRegion(
                    onEnter: (event) {
                      setState(() {
                        isHovering = true;
                      });
                      stopAudio();
                      playRiverAudio();
                    },
                    onExit: (event) {
                      setState(() {
                        isHovering = false;
                      });
                      stopRiverAudio();
                      playAudio();
                    },
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        backgroundColor: Colors.teal,
                      ),
                      child: Text('Biomimicry',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                SizedBox(
                  width: 200,
                  child: MouseRegion(
                    onEnter: (event) {
                      setState(() {
                        isHovering = true;
                      });
                      stopAudio();
                      playOwlAudio();
                    },
                    onExit: (event) {
                      setState(() {
                        isHovering = false;
                      });
                      stopOwlAudio();
                      playAudio();
                    },
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        backgroundColor: Colors.teal,
                      ),
                      child: Text('Quiz',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                SizedBox(
                  width: 200,
                  child: MouseRegion(
                    onEnter: (event) {
                      setState(() {
                        isHovering = true;
                      });
                      stopAudio();
                      playFrogAudio();
                    },
                    onExit: (event) {
                      setState(() {
                        isHovering = false;
                      });
                      stopFrogAudio();
                      playAudio();
                    },
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        backgroundColor: Colors.teal,
                      ),
                      child: Text('AR',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                SizedBox(
                  width: 200,
                  child: MouseRegion(
                    onEnter: (event) {
                      setState(() {
                        isHovering = true;
                      });
                      stopAudio();
                      playCricketAudio();
                    },
                    onExit: (event) {
                      setState(() {
                        isHovering = false;
                      });
                      stopCricketAudio();
                      playAudio();
                    },
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/ar');
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        backgroundColor: Colors.teal,
                      ),
                      child: Text('Architecture',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
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
}
