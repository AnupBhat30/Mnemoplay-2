import 'package:flutter/material.dart';
import 'dart:async';

class PvPQuiz extends StatefulWidget {
  const PvPQuiz({Key? key}) : super(key: key);

  @override
  _PvPQuizState createState() => _PvPQuizState();
}

class _PvPQuizState extends State<PvPQuiz> {

  int _currentQuestionIndex = 0;
  int _player1Score = 0;
  int _player2Score = 0;
  bool _isPlayer1Turn = true;
  final int totalQuestionsPerPlayer = 5;

  List<QuizQuestion> _questions = [

    QuizQuestion(
      'Find the value of x – y, if ',
      ['x - y = 3', 'x - y = 0', 'x - y = 2', 'x - y = -1'],
      'x - y = 0',
      '.',
      'assets/temp/matrixq1.png',
    ),
    QuizQuestion(
      'Find value of x and y, if',
      ['x = 2, y = 7', 'x = 7, y = 2', 'x = 3, y = 6', 'x = -2, y = 7'],
      'x = 2, y = 7',
      '.',
      'assets/temp/matrixq2.png',
    ),
    QuizQuestion(
      'Find the value of x, if',
      ['-2', '0', '1', '2'],
      '2',
      '.',
      'assets/temp/matrixq3.jpg',
    ),
    QuizQuestion(
      'Find the value of x and y, if: ',
      ['x = 2, y = 6', 'x = 2, y = -6', 'x = 3, y = -4', 'x = 3, y = -6'],
      'x = 2, y = -6',
      '.',
      'assets/temp/matrixq4.jpg',

    ),
    QuizQuestion(
      'Find the element a32.',
      ['5', '6', '4', '8'],
      '8',
      '.',
      'assets/temp/matrixq5.png',
    ),
    QuizQuestion(
      'which of the elements aij follows the condition i=j. ',
      ['9, 9, 1', '2, 9, 7', '2, 3, 9', '2, 3, 1'],
      '2, 9, 7',
      '.',
      'assets/temp/matrixq6.png',
    ),
    QuizQuestion(
      'The matrix ',
      ['is a row matrix', 'is a scalar matrix', 'a horizontal matrix', 'a column matrix'],
      'a column matrix',
      '.',
      'assets/temp/matrixq7.png',
    ),
    QuizQuestion(
      'Find the value of a,b,c,d if ',
      ['3, 2, 1, 4', '3, 2, 1, 6', '2, 2, 2, 2', '2, 1, 2, 2'],
      '2, 1, 2, 2',
      '.',
      'assets/temp/matrixq8.png',
    ),
    QuizQuestion(
      'Find the value of x and y if: ',
      ['x = -1, y = 9', 'x = -1, y = -9', 'x = 1, y = -9', 'x = 1, y = 9'],
      'x = 1, y = 9',
      '.',
      'assets/temp/matrixq9.png',
    ),
    QuizQuestion(
      'The given system of equations is consistent?',
      ['True', 'False', 'Maybe', 'None of the above'],
      'True',
      '.',
      'assets/temp/matrixq10.png',
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
    return Center(
      child: Scaffold(
        backgroundColor: Color(0xFFF7E7CE),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xFF6F4E37),
          title: Center(
            child: Text(
              'Player vs Player Quiz',
              style: TextStyle(
                color: Color(0xFFF7E7CE),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Question ${(_currentQuestionIndex ~/ 2) + 1} for ${_isPlayer1Turn ? 'Player 1' : 'Player 2'}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18, color: Color(0xFF6F4E37)),
                ),
                SizedBox(height: 20),
                Center(
                  child: Card(
                    elevation: 4,
                    color: _isPlayer1Turn ? Color(0xFFAC9464) : Color(0xFF6F4E37) ,
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
                ),
                SizedBox(height: 20),
                Column(
                  children: _questions[_currentQuestionIndex]
                      .options
                      .map((option) => Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: _isPlayer1Turn ? Color(0xFFAC9464): Color(0xFF6F4E37),
                      ),
                      onPressed: () => _checkAnswer(option),
                      child: Text(
                        option,
                        style: TextStyle(
                            color: Colors.white,
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