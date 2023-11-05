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
    int result = await audioPlayer.play('assets/temp/forest.mp3', isLocal: true);
    if (result == 1) {
      // Success
      print('Forest audio played');
    } else {
      // Error
      print('Error playing forest audio');
    }
  }
  void stopAudio() async {
    await audioPlayer.stop();
  }

  void playRiverAudio() async {
    int result = await hoverAudioPlayer.play('assets/temp/river.mp3', isLocal: true);

    if (result == 1) {
      print('River audio played');
      audioPlayer.setVolume(0.5);
    } else {
      print('Error playing river audio');
    }
  }

  void stopRiverAudio() async {
    await hoverAudioPlayer.stop();
  }
  void playCricketAudio() async {
    int result = await hoverAudioPlayer.play('assets/temp/cricket.mp3', isLocal: true);
    if (result == 1) {
      print('Cricket audio played');
    } else {
      print('Error playing cricket audio');
    }
  }

  void stopCricketAudio() async {
    await hoverAudioPlayer.stop();
  }

  void playFrogAudio() async {
    int result = await hoverAudioPlayer.play('assets/temp/frogs.mp3', isLocal: true);
    if (result == 1) {
      print('Frog audio played');
    } else {
      print('Error playing frog audio');
    }
  }
  void stopFrogAudio() async {
    await hoverAudioPlayer.stop();
  }

  void playOwlAudio() async {
    int result = await hoverAudioPlayer.play('assets/temp/owl.mp3', isLocal: true);
    if (result == 1) {
      print('Owl audio played');
    } else {
      print('Error playing owl audio');
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
                      child: Text('Biomimicry', style: TextStyle(fontSize: 20,
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
                      child: Text('Quiz', style: TextStyle(fontSize: 20,
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
                      child: Text('AR', style: TextStyle(fontSize: 20,
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
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        backgroundColor: Colors.teal,
                      ),
                      child: Text('Google Viewer', style: TextStyle(fontSize: 20,
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
