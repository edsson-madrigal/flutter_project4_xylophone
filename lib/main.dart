// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
//import 'package:english_words/english_words.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                Audio.load('assets/note1.wav')
                  ..play()
                  ..dispose();
              },
              child: Text('play'),
            ),
          ),
        ),
      ),
    );
  }
}
