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
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: () {
                  Audio.load('assets/note1.wav')
                    ..play()
                    ..dispose();
                },
                child: Text(''),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.orange),
                onPressed: () {
                  Audio.load('assets/note2.wav')
                    ..play()
                    ..dispose();
                },
                child: Text(''),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.yellow),
                onPressed: () {
                  Audio.load('assets/note3.wav')
                    ..play()
                    ..dispose();
                },
                child: Text(''),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.teal),
                onPressed: () {
                  Audio.load('assets/note4.wav')
                    ..play()
                    ..dispose();
                },
                child: Text(''),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blue),
                onPressed: () {
                  Audio.load('assets/note5.wav')
                    ..play()
                    ..dispose();
                },
                child: Text(''),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.purple),
                onPressed: () {
                  Audio.load('assets/note6.wav')
                    ..play()
                    ..dispose();
                },
                child: Text(''),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.green),
                onPressed: () {
                  Audio.load('assets/note7.wav')
                    ..play()
                    ..dispose();
                },
                child: Text(''),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
