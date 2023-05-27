import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Card(),
  ));
}

class Card extends StatelessWidget {
  const Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],

      appBar: AppBar(
        title: Text("ID card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/space1.jpg'),
                radius: 40
              ),
            ),

            Divider(
              height: 90.0,
              color: Colors.grey[600],
            ),

            Text(
              "NAME",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              )
            ),

            SizedBox(
              height: 10.0,
            ),

            Text(
                "Zane Jansen van Vuuren",
                style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold,
                )
            ),

            SizedBox(
              height: 30.0,
            ),

            Text(
                "CURRENT LEVEL",
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                )
            ),

            SizedBox(
              height: 10.0,
            ),

            Text(
                "8",
                style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold,
                )
            ),

            SizedBox(
              height: 30.0,
            ),

            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),

                SizedBox(
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
