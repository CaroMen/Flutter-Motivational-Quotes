import 'package:FirstApp/quotes.dart';
import 'package:FirstApp/reset.dart';
import 'package:flutter/material.dart';
import 'package:FirstApp/reset.dart';

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

  void _resetQuotes() {
    setState(() {
      _quoteIndex = 0;
    });
  }

  var _quotes = const [
    {'quote_list': 'A beautiful day begins with a beautiful mindeset'},
    {
      'quote_list':
          'Don\'t adapt to the energy in the room. Influence the energy in the room'
    },
    {
      'quote_list':
          'What you think, you become. What you feel, you attract. What you imagine, you create.'
    },
    {'quote_list': 'If there is no struggle, there is no progress'},
  ];

  void _setQuote() {
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
          body: _quoteIndex < _quotes.length
              ? Quotes(
                  quoteIndex: _quoteIndex,
                  setQuote: _setQuote,
                  quotes: _quotes,
                )
              : Reset(
                  _resetQuotes,
                )),
    );
  }
}
