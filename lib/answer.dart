import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Answer extends StatelessWidget {
  final Function senderHandler;
  final String asnwerText;

  Answer(this.senderHandler, this.asnwerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(3),
        width: double.infinity,
        child: RaisedButton(hoverColor: Colors.yellow,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.5),
                side: BorderSide(color: Colors.red)),
            child: Text(
              asnwerText,
              style: TextStyle(fontSize: 20),
            ),
            onPressed: senderHandler,
            color: Colors.grey[300],
            textColor: Colors.blue[900]));
  }
}
