import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '/quote.dart';

class QuoteCard extends StatelessWidget {
  //why final? because we are using stateless widget in which use of data cannot be possible.so to assure it that it will change we use final.
  final Quote quote;
  final VoidCallback delete;
  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
              Text(quote.text,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[600],
                  )),
              SizedBox(height: 6.0),
              Text(quote.author,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  )),
              SizedBox(height: 8),
              FlatButton.icon(onPressed: delete, icon: Icon(Icons.delete), label: Text("Delete"))
            ])));
  }
}
