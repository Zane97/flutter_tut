import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Tutorial"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),

      body: Center(
        child: Text(
            "Hello world",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.grey[600],
              fontFamily: "ReenieBeanie",
            )
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.red,
        child: Text("Click"),
      ),

    );
  }
}
