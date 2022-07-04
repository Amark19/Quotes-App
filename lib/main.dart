import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '/quote.dart';
import '/quote_card.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: "Amar k", text: "Be Positive"),
    Quote(author: "Amar k", text: "Great things takes time to happen"),
    Quote(author: "Amar k", text: "Patience pays off"),
  ];

  // Widget quoteTemp(quote) {
  //   return  QuoteCard(quote:quote); //can be directly call in our map function
  ///instead of writing this in a function we can write it in a statelesswidget custom class which can be instantiated and can be extended
  // return Card(
  //     margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
  //     child: Padding(
  //         padding: EdgeInsets.all(12),
  //         child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
  //           Text(quote.text,
  //               style: TextStyle(
  //                 fontSize: 18,
  //                 color: Colors.grey[600],
  //               )),
  //           SizedBox(height: 6.0),
  //           Text(quote.author,
  //               style: TextStyle(
  //                 fontSize: 14,
  //                 color: Colors.grey[600],
  //               )),
  //         ])));

  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        title: Text("My Quote List"),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
          children: quotes
              .map((quote) => QuoteCard(
                  quote: quote,
                  delete: () {
                    // print("ok");
                    setState(() {
                      quotes.remove(quote);
                    });
                  }))
              .toList()),
    );
  }
}
