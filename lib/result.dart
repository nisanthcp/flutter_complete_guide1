import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function sendHandler;

  Result(this.resultScore , this.sendHandler);
  String get resultPhrase {
    String resultText;
    if (resultScore > 3) {
      resultText = 'You are excellent. Toal Mark:-' + resultScore.toString() ; 
    } else if (resultScore >= 1) {
      resultText = 'Your Toal Mark:-' + resultScore.toString() ;
    } else {
      resultText = 'Your answers are wrong. Toal Mark:-' + resultScore.toString() ;
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Reset Quiz',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            onPressed: sendHandler,
          ),
        ],
      ),
    );
  }
}
