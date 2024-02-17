import 'package:flutter/material.dart';
import 'dart:async';
class BioQuiz extends StatefulWidget {
  const BioQuiz({Key? key}) : super(key: key);

  @override
  _BioQuizState createState() => _BioQuizState();
}

class _BioQuizState extends State<BioQuiz>{
  int _currentQuestionIndex = 0;
  int _score = 0;
  int _secondsRemaining = 30;
  final int totalQuestions = 10;
  int _points = 0;

  List<QuizQuestion> _questions = [
    QuizQuestion(
      'How do tubercles on humpback whale fins influence the design of wind turbine blades?',
      ['Increase water resistance', 'Minimize lift in fast flows', 'Reduce drag and enhance lift', 'Enhance turbine noise for communication'],
      'Reduce drag and enhance lift',
      '.',
      'assets/temp/hwhale1.jpeg',
    ),
    QuizQuestion(
      'How have humpback whale fins inspired the design of wind turbines through biomimicry?',
      ['By mimicking the coloration patterns of the fins', 'Through incorporating the flexibility of the fins in turbine blades', 'By replicating the tubercles on the leading edge for improved aerodynamics', 'Imitating the size and curvature of the fins for increased energy production'],
      'By replicating the tubercles on the leading edge for improved aerodynamics',
      '.',
      'assets/temp/whale.jpeg',
    ),
    QuizQuestion(
      'How has biomimicry, specifically inspired by snake skin, influenced the design of shoe grips?',
      ['By mimicking the coloration patterns of snakes', 'Through replicating the texture and microstructures of snake scales', 'By incorporating venomous properties into shoe materials', 'Using snake skin as the primary material for shoe soles'],
      'Through replicating the texture and microstructures of snake scales',
      '.',
      'assets/temp/snake2.jpeg',
    ),
    QuizQuestion(
      'How do gecko-inspired adhesives contribute to the versatility of their applications?',
      ['By imitating the geckos vocalization patterns', 'Through mimicking the geckos sleeping habits', 'By providing a strong yet easily detachable bond', 'Replicating the geckos reproductive behaviors'],
      'By providing a strong yet easily detachable bond',
      '.',
      'assets/temp/geck3.png',
    ),
    QuizQuestion(
      'What specific property of snake skin has been utilized in the design of shoe grips for improved performance?',
      ['Venomous secretion', 'Color-changing ability', 'Microstructures and texture', 'Infrared heat detection'],
      'Microstructures and texture',
      '.',
      'assets/temp/snake1.jpeg',
    ),
    QuizQuestion(
      'How did biomimicry, inspired by the kingfisher, influence the design of the Japanese bullet train?',
      ['By imitating the hunting behavior of the kingfisher', 'Through replicating the bright coloration of the kingfishers plumage', 'By incorporating the streamlined beak shape of the kingfisher for improved aerodynamics', 'Mimicking the nesting habits of the kingfisher for train interior design'],
      'By incorporating the streamlined beak shape of the kingfisher for improved aerodynamics',
      '.',
      'assets/temp/king2.jpg',
    ),
    QuizQuestion(
      'How did biomimicry, inspired by penguins, contribute to the design improvements of the Japanese bullet train?',
      ['By replicating the black and white coloration pattern of penguins for aesthetic appeal', 'Incorporating the hydrodynamic efficiency of penguin feathers for improved train speed', 'Mimicking the waddling movement of penguins for better stability on tracks', 'Using penguin beak shape as a model for the trains nose design'],
      'Incorporating the hydrodynamic efficiency of penguin feathers for improved train speed',
      '.',
      'assets/temp/penguin1.jpeg',
    ),
    QuizQuestion(
      'How has slug slime inspired the development of sticky surgical glue through biomimicry?',
      ['By replicating the coloration patterns of slug slime', 'Mimicking the ability of slug slime to produce toxins', 'Harnessing the adhesive properties for wet and dynamic surfaces', 'Imitating the slimy texture of slug slime for tactile feedback'],
      'Harnessing the adhesive properties for wet and dynamic surfaces',
      '.',
      'assets/temp/slug1.jpg',
    ),
    QuizQuestion(
      'How has biomimicry, inspired by the geckos feet, influenced the development of modern adhesives?',
      ['By incorporating toxins for enhanced adhesion', 'Through mimicking the microscopic setae and van der Waals force mechanism', 'Using gecko skin as a base material for adhesives', 'Imitating the coloration patterns of gecko feet for aesthetic appeal'],
      'Through mimicking the microscopic setae and van der Waals force mechanism',
      '.',
      'assets/temp/geck1.jpeg',
    ),
    QuizQuestion(
      'What specific medical application has been targeted in the development of sticky surgical glue inspired by slug slime?',
      ['Enhancing bone density', 'Replacing dental fillings', 'Sealing wounds and adhering to tissues', 'Improving organ transplantation'],
      'Sealing wounds and adhering to tissues',
      '.',
      'assets/temp/slug2.jpg',
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
        _points += 10;
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
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Your Score: $_score out of $totalQuestions'),
              Text('Total Points: $_points'), // Display total points
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/bio');
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
        height: 150,
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
        title: Center(
          child: Text(
            'Biomimicry Quiz',
            style: TextStyle(
              color: Color(0xFF167055),
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
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20),
              Card(
                elevation: 4,
                color: const Color(0xFFF4C56E),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      _buildQuestionImage(),
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
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFF4C56E), // Set your desired color here
                    ),
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