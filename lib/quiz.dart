import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
        questions[questionIndex]['questionText'],
      ),
      ...(questions[questionIndex]['answers'] as List<Map<String , Object>>).map((answer) {
        return Answer(() => answerQuestion(answer['score']), answer['text']);
      }).toList()

      /* Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            */
      /*RaisedButton(
              child: Text('Answer 1 '),
              onPressed:
                  _answerQuestion, //even though answerQuestion is a function,
              // here in onPressed the brackets will not be used because
              //if brakets used then it execute immediately.
              //So we just point to that function without brackets.
            ),
            RaisedButton(
              child: Text('Answer 2 '),
              onPressed: () => print(' Answer 2 pressed'),
            ),
            RaisedButton(
              child: Text('Answer 3 '),
              onPressed: () => {
                //......,.

                print('Answer 3 selected'),
              },
            ),*/
    ]);
  }
}
