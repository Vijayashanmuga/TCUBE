import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

class mathQuze extends StatefulWidget {
  const mathQuze({Key? key}) : super(key: key);

  @override
  _mathQuzeAppState createState() => _mathQuzeAppState();
}

class _mathQuzeAppState extends State<mathQuze> {
  final _questions = const [
    {
      'question': 'Q1:Does your child read Numbers corrrectly?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        {'text': 'Moderate', 'score': 5},
        // {'text': 'Old', 'score': 10},
      ]
    },
    {
      'question': 'Q2: Is there any confusion on recognising number\'s?',
      'answers': [
        {'text': 'Yes', 'score': 0},
        {'text': 'No', 'score': 10},
        {'text': 'Moderate', 'score': 5},
      ]
    },
    {
      'question': 'Q3: Does your child read the number\'s sequentially ?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        {'text': 'Moderate', 'score': 5},
      ]
    },
    {
      'question': 'Q4: Does your child miss any Number?',
      'answers': [
        {'text': 'Yes', 'score': 0},
        {'text': 'No', 'score': 10},
        {'text': 'Moderate', 'score': 5},
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuzie() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("You have more questions to answer");
    } else {
      print("No more Question");
    }
  }

  void _answeQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 242, 231, 231),
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Color.fromARGB(255, 243, 170, 110),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(150),
                  bottomLeft: Radius.circular(150))),
          title: Center(
            child: Text(
              'Health Quiz',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
        ),
        // backgroundColor: Color(0xff19B9AF),
        // shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.only(
        //         bottomRight: Radius.circular(150),
        //         bottomLeft: Radius.circular(150)))),
        // drawer: Drawer(),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          //  children: [
          Container(
              margin: const EdgeInsets.fromLTRB(50, 50, 0, 0),
              child: CircleAvatar(
                radius: 100,
                backgroundColor: Color.fromARGB(255, 242, 231, 231),
                child: Image.asset(
                  'assets/images/no.png',
                  fit: BoxFit.cover,
                  height: 400,
                  width: 1200,
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(10),
            child: _questionIndex < _questions.length
                ? Quize(
                    answeQuestion: _answeQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions)
                : Result(_totalScore, _resetQuzie),
          ),
        ])),
      ),
    );
  }
}
