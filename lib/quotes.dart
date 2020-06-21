import 'package:FirstApp/main.dart';
import 'package:flutter/material.dart';

class Quotes extends StatelessWidget {
  final List quotes;
  final int quoteIndex;

  Quotes({@required this.quotes, @required this.quoteIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        quotes[quoteIndex],
      ],
    );
  }
}
