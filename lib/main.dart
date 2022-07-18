// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
//import 'package:english_words/english_words.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int soundNumber) {
    Audio.load('assets/note$soundNumber.wav')
      ..play()
      ..dispose();
  }

  Widget buildKey({Color? color, required int soundNumber}) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: color),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.blue, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.teal, soundNumber: 4),
              buildKey(color: Colors.green, soundNumber: 5),
              buildKey(color: Colors.purple, soundNumber: 6),
              buildKey(color: Colors.pink, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
