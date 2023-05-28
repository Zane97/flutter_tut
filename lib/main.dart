import 'package:flutter/material.dart';

import 'quote.dart';

void main() {
  runApp(const MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes =[
    Quote(author: 'Dali Lama', text: "The purpose of our lives is to be happy."),
    Quote(author: 'John Lennon', text: "Life is what happens when you're busy making other plans."),
    Quote(author: 'Stephen King', text: "Get busy living or get busy dying."),
    Quote(author: 'Mae West', text: "You only live once, but if you do it right, once is enough."),
  ];

  Widget quoteTemplate(quote){
    return Card(
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),

        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              Text(
                quote.text,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600],
                ),
              ),

              const SizedBox(height: 6.0),

              Text(
                quote.author,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[800],
                ),
              ),
            ],
          ),
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      appBar: AppBar(
        title: const Text('Awesome Quote'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),

      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote) ).toList(),

      )
    );
  }
}
