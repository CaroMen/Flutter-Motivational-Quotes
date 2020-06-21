import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _quoteIndex = 0;
  var _quotes = const [
    'A beautiful day begins with a beautiful mindeset',
    'Don\'t adapt to the energy in the room. Influence the energy in the room',
    'What you think, you become. What you feel, you attract. What you imagine, you create.',
    'If there is no struggle, there is no progress',
  ];

  void setQuote() {
    setState(() {
      _quoteIndex += 1;
    });
    print(_quoteIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Motivational Quotes'),
        ),
        body: Container(
          child:
              Column(children: <Widget>[for (var item in _quotes) Text(item)]),
        ),
      ),
    );
  }
}
