import 'package:flutter/material.dart';
import 'dart:async';

class BioPvp extends StatefulWidget {
  const BioPvp({Key? key}) : super(key: key);

  @override
  _BioPvpState createState() => _BioPvpState();
}

class _BioPvpState extends State<BioPvp> {

  int _currentQuestionIndex = 0;
  int _player1Score = 0;
  int _player2Score = 0;
  bool _isPlayer1Turn = true;
  final int totalQuestionsPerPlayer = 5;

  List<QuizQuestion> _questions = [

    QuizQuestion(
      '',
      ['Thorns of rose plant', 'Mosquito beak', 'Cactus spine', 'Needlefish'],
      'Mosquito beak',
      '.',
      'assets/temp/biox1.png',
    ),
    QuizQuestion(
      '',
      ['Geckos adhesive pads', 'Chameleons prehensile tail', 'Snakes scaled skin', 'Koalas rough paw pads'],
      'Snakes scaled skin',
      '.',
      'assets/temp/biox2.png',
    ),
    QuizQuestion(
      '',
      ['Tree Sap', 'Slime slug mucus', 'Tree frog toe pads', 'Spider silk'],
      'Slime slug mucus',
      '.',
      'assets/temp/biox3.png',
    ),
    QuizQuestion(
      '',
      ['Manta ray', 'Sting ray', 'Jellyfish', 'Killer whale'],
      'Manta ray',
      '.',
      'assets/temp/biox4.png',
    ),
    QuizQuestion(
      '',
      ['Burdock plant', 'Geckos feet', 'Monitor lizard', 'Venus fly trap'],
      'Burdock plant',
      '.',
      'assets/temp/biox5.png',
    ),
    QuizQuestion(
      '',
      ['Swordfish', 'Kingfisher', 'Pelican', 'Sharks'],
      'Kingfisher',
      '.',
      'assets/temp/biox6.png',
    ),
    QuizQuestion(
      '',
      ['Birds nest', 'Hay bale', 'Mangrove tree roots', 'Beehive'],
      'Birds nest',
      '.',
      'assets/temp/biox7.png',
    ),
    QuizQuestion(
      '',
      ['Banyan tree trunk', 'Coconut Tree', 'Human thigh bone', 'Coral reefs'],
      'Human thigh bone',
      '.',
      'assets/temp/biox8.png',
    ),
    QuizQuestion(
      '',
      ['Cirrus clouds', 'Opal gemstone', 'Soap bubbles', 'Seashells'],
      'Soap bubbles',
      '.',
      'assets/temp/biox9.png',
    ),
    QuizQuestion(
      '',
      ['Seashells', 'Wave crests', 'Sand dunes', 'Orange peels'],
      'Orange peels',
      '.',
      'assets/temp/biox10.png',
    ),

  ];

  @override
  void initState() {
    super.initState();
    _shuffleQuestions();
  }

  void _shuffleQuestions() {
    _questions.shuffle();
  }

  void _checkAnswer(String selectedAnswer) {
    if (_questions[_currentQuestionIndex].correctAnswer == selectedAnswer) {
      if (_isPlayer1Turn) {
        setState(() {
          _player1Score += 10;
        });
      } else {
        setState(() {
          _player2Score += 10;
        });
      }
    }
    _nextQuestion();
  }

  void _nextQuestion() {
    if (_currentQuestionIndex < totalQuestionsPerPlayer * 2 - 1) {
      setState(() {
        _currentQuestionIndex++;
        _isPlayer1Turn = !_isPlayer1Turn;
      });
    } else {
      _showResultDialog();
    }
  }

  void _showResultDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Quiz Completed'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Player 1 Score: $_player1Score out of 50'),
              Text('Player 2 Score: $_player2Score out of 50'),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/main');
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  Widget _buildQuestionImage() {
    if (_questions[_currentQuestionIndex].imageAssetPath.isNotEmpty) {
      return Container(
        width: 200,
        height: 200,
        child: Image.asset(_questions[_currentQuestionIndex].imageAssetPath),
      );
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF167055),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFF4C56E),
        title: Center(
          child: Text(
            'Player vs Player Bio Quiz',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Question ${(_currentQuestionIndex ~/ 2) + 1} for ${_isPlayer1Turn ? 'Player 1' : 'Player 2'}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18, color: Colors.black),
                ),
                SizedBox(height: 20),
                Card(
                  elevation: 4,
                  color: _isPlayer1Turn ? Color(0xFFF4C56E) : Color(0xFFf09d62) ,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                        _buildQuestionImage(),
                        SizedBox(height: 20),
                        Text(
                          _questions[_currentQuestionIndex].questionText,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  children: _questions[_currentQuestionIndex]
                      .options
                      .map((option) => Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: _isPlayer1Turn ? Color(0xFFF4C56E): Color(0xFFf09d62),
                      ),
                      onPressed: () => _checkAnswer(option),
                      child: Text(
                        option,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18),
                      ),
                    ),
                  ))
                      .toList(),
                ),
              ],
            ),

          ),
        ),
      ),
    );
  }
}



class QuizQuestion {
  final String questionText;
  final List<String> options;
  final String correctAnswer;
  final String analogy;
  final String imageAssetPath;

  QuizQuestion(
      this.questionText,
      this.options,
      this.correctAnswer,
      this.analogy,
      this.imageAssetPath
      );
}
