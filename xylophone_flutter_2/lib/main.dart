import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey(int soundNumber, Color noteColor) {
    return Expanded(
      child: FlatButton(
        color: noteColor,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1, Colors.blue),
              buildKey(2, Colors.red),
              buildKey(3, Colors.yellow),
              buildKey(4, Colors.teal),
              buildKey(5, Colors.purple),
              buildKey(6, Colors.lightGreen),
              buildKey(7, Colors.pinkAccent),
            ],
          ),
        ),
      ),
    );
  }
}
