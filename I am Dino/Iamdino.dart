import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'I Am Dino',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blueGrey[800],
        ),
        body: Center(
          child: Image(
              image: AssetImage('images/dino.png')
          ),
        ),
        backgroundColor: Colors.green,
      ),
    ),
  );
}
