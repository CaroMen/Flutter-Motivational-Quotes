import 'package:flutter/material.dart';

class Reset extends StatelessWidget {
  final Function resetQuotes;

  Reset(this.resetQuotes);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        FlatButton(
          child: Text('Next Quote'),
          onPressed: resetQuotes,
        )
      ],
    ));
  }
}
