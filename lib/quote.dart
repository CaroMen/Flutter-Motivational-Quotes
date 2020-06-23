import 'package:flutter/material.dart';

class Quote extends StatelessWidget {
  final String quote_list;

  Quote(this.quote_list);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        quote_list,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
