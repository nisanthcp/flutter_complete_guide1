import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(
      MyApp()); // ITs an expression. () parenthesis is required after a class when calling
}

//void main() => runApp(MyApp()); //another method of calling.Shortend oneline code

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    //print('Answer selected');
  }

  void reset() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override //Technically its not required.It's called decorator. THis make our code clearer.
  //We delibratly overriding this extended class
  Widget build(BuildContext context) {
    //build method , always responsible for new widgets. context = argument. BuildContext = object
    //return MaterialApp(home: Text('Hello'),);

    const _questions = [
      {
        'questionText': 'ആദ്യത്തെ മലയാള നോവല്‍ ?',
        'answers': [
          {'text': 'വെയില്‍', 'score': 0},
          {'text': 'തത്പുരുഷൻ', 'score': 0},
          {'text': 'അവ്വയീഭാവൻ', 'score': 0},
          {'text': 'കുന്ദലത', 'score': 1}
        ]
      },
      {
        'questionText': 'മേയനാമത്തിന് ഉദാഹരണം ഏത്?',
        'answers': [
          {'text': 'ഉപലം', 'score': 0},
          {'text': 'മല', 'score': 0},
          {'text': 'വെയില്‍', 'score': 1},
          {'text': 'മരം ', 'score': 0}
        ]
      },
      {
        'questionText': 'ഇന്ത്യ സ്വതന്ത്രമായത്?',
        'answers': [
          {'text': '1947 ആഗസ്റ്റ് 15', 'score': 1},
          {'text': '1950 ജനുവരി 24', 'score': 0},
          {'text': '1957 മാർച്ച് 22', 'score': 0},
          {'text': '1950 ജനുവരി 26', 'score': 0},
        ]
      },
      {
        'questionText': 'ഇന്ത്യ റിപ്പബ്ലിക് ആയത്?',
        'answers': [
          {'text': '1947 ആഗസ്റ്റ് 15', 'score': 0},
          {'text': '1950 ജനുവരി 24', 'score': 0},
          {'text': '1957 മാർച്ച് 22', 'score': 0},
          {'text': '1950 ജനുവരി 26', 'score': 1},
        ]
      },
      {
        'questionText': 'മലയാളത്തിന് ശ്രേഷ്ടഭാഷാ പദവി ലഭിച്ച വര്‍ഷം?',
        'answers': [
          {'text': '2013 മെയ് 23', 'score': 1},
          {'text': '2014 ജനുവരി 23', 'score': 0},
          {'text': '2013 മാർച്ച് 22', 'score': 0},
          {'text': '2014 ജനുവരി 22', 'score': 0},
        ]
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Nisnath First App'),
          backgroundColor: Colors.yellow,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore , reset),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
