import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.yellow,
          primary: Colors.blue,
        ),
        child: Text("Answer 3"),
        onPressed: selectHandler,
      ),
    );
  }
}
