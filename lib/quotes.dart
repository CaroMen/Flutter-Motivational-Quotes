import 'package:flutter/material.dart';

class Quotes extends StatelessWidget {
  final List quotes;
  final int quoteIndex;
  final Function setQuote;

  Quotes(
      {@required this.quotes,
      @required this.quoteIndex,
      @required this.setQuote});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        setQuote(
          quotes[quoteIndex]['quote'],
        ),
        ...(quotes[quoteIndex]['quote'] as List<Map<String, Object>>).map(())
        return ///////
    );
  }
}
