import 'package:flutter/material.dart';
import 'dart:async';
class MLevel1Quiz extends StatefulWidget {
  const MLevel1Quiz({Key? key}) : super(key: key);

  @override
  _MLevel1QuizState createState() => _MLevel1QuizState();
}

class _MLevel1QuizState extends State<MLevel1Quiz>{
  int _currentQuestionIndex = 0;
  int _score = 0;
  int _secondsRemaining = 30;
  final int totalQuestions = 10;

  List<QuizQuestion> _questions = [
    QuizQuestion(
      'Which matrix has equal number of rows and columns?',
      ['Square Matrix', 'Column Matrix', 'Row Matrix', 'None of the above'],
      'Square Matrix',
      '.',
      'assets/temp/squareq.png',
    ),
    QuizQuestion(
      'Calculate the trace of the above matrix',
      ['13', '15', '9', '8'],
      '13',
      '.',
      'assets/temp/diagonals.png',
    ),
    QuizQuestion(
      'Which type of matrix is obtained when all elements above the main diagonal are zero?',
      ['Upper Triangular Matrix', 'Lower Triangular Matrix', 'Diagonal Matrix', 'None of the above'],
      'Lower Triangular Matrix',
      '.',
      'assets/temp/lowertriq.png',
    ),
    QuizQuestion(
      'What is the primary characteristic of a zero matrix?',
      ['It has all elements as 1', 'It has all elements as 0', 'It is a square matrix', 'It is always upper triangular'],
      'It has all elements as 0',
      '.',
      'assets/temp/zeroq.png',
    ),
    QuizQuestion(
      'What is the dimension of a row matrix with 7 elements?',
      ['1 x 7', '7 x 1', '7 x 7', '1 x 1'],
      '1 x 7',
      '.',
      'assets/temp/rowqq.png',
    ),
    QuizQuestion(
      'A matrix with a single row and multiple columns is called: ',
      ['Row Matrix', 'Column Matrix', 'Square Matrix', 'Diagonal Matrix'],
      'Row Matrix',
      '.',
      'assets/temp/rowqq.png',
    ),
    QuizQuestion(
      'An identity matrix (unit matrix) is always: ',
      ['A row matrix', 'A matrix with all elements as 0', 'A matrix with all elements as 1', 'A square matrix'],
      'A square matrix',
      '.',
      'assets/temp/idenq.webp',
    ),
    QuizQuestion(
      'What is the name of the above given matrix: ',
      ['A row matrix', 'A square matrix', 'A column matrix', 'An identity matrix'],
      'A column matrix',
      '.',
      'assets/temp/columnqq.png',
    ),
    QuizQuestion(
      'What is the name of the above given matrix: ',
      ['A row matrix', 'An upper triangular matrix', 'A column matrix', 'An identity matrix'],
      'An upper triangular matrix',
      '.',
      'assets/temp/tritri.jpg',
    ),
    QuizQuestion(
      'What is the sum of elements in the diagonal of a matrix called?',
      ['Trace', 'Determinant', 'Rank', 'None of the above'],
      'Trace',
      '.',
      'assets/temp/diagonals.png',
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
      setState(() {
        _score++;
      });
    }
    _nextQuestion();
  }
  void _nextQuestion() {
    if (_currentQuestionIndex < totalQuestions - 1) {
      setState(() {
        _currentQuestionIndex++;
        _secondsRemaining = 30;
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
          content: Text('Your Score: $_score out of $totalQuestions'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/math');
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
        width: 100,
        height: 100,
        child: Image.asset(_questions[_currentQuestionIndex].imageAssetPath),
      );
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7E7CE),
      appBar: AppBar(
        backgroundColor: Color(0xFF6F4E37),
        title: Center(
          child: Text(
            'Types Of Matrices',
            style: TextStyle(
              color: Color(0xFFF7E7CE),
              fontSize: 30,
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
                'Question ${_currentQuestionIndex + 1} of ${totalQuestions}',
                style: TextStyle(fontSize: 18, color: Color(0xFF6F4E37),),
              ),
              SizedBox(height: 20),
              Card(
                elevation: 4,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      _buildQuestionImage(), // Display the image
                      SizedBox(height: 20),
                      Text(
                        _questions[_currentQuestionIndex].questionText,
                        style: TextStyle(fontSize: 24),
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
                    onPressed: () => _checkAnswer(option),
                    child: Text(
                      option,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ))
                    .toList(),
              ),
            ],
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
      this.imageAssetPath,
      );
}
