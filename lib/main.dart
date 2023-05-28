import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Card(),
  ));
}

class Card extends StatefulWidget {
  const Card({Key? key}) : super(key: key);

  @override
  State<Card> createState() => _CardState();
}

class _CardState extends State<Card> {

  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],

      appBar: AppBar(
        title: const Text("ID card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            level += 1;
          });
        },
        backgroundColor: Colors.grey[800],
        child: const Icon(Icons.plus_one),
      ),

      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/space1.jpg'),
                radius: 40
              ),
            ),

            Divider(
              height: 90.0,
              color: Colors.grey[600],
            ),

            const Text(
              "NAME",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              )
            ),

            const SizedBox(
              height: 10.0,
            ),

            const Text(
                "Zane Jansen van Vuuren",
                style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold,
                )
            ),

            const SizedBox(
              height: 30.0,
            ),

            const Text(
                "CURRENT LEVEL",
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                )
            ),

            const SizedBox(
              height: 10.0,
            ),

            Text(
                "$level",
                style: const TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold,
                )
            ),

            const SizedBox(
              height: 30.0,
            ),

            Row(
              children: [
                const Icon(
                  Icons.email,
                  color: Colors.grey,
                ),

                const SizedBox(
                  width: 10.0,
                ),

                Text(
                  "Test@123.co.za",
                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                )
              ],
            )
          ],
        )
      )
    );
  }
}

