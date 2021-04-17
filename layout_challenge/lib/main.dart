import 'package:flutter/material.dart';

void main() {
  runApp(LayoutChallengeApp());
}

class LayoutChallengeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Challenge',
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Colors.amber,
                width: 100.0,
              ),
              Container(
                width: 100.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(),
                    Container(
                      color: Colors.blueGrey,
                      height: 100.0,
                      width: 100.0,
                    ),
                    Container(
                      color: Colors.lightBlueAccent,
                      height: 100.0,
                      width: 100.0,
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.yellow,
                width: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
