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
                  playSound(1);
                },
                child: Text(''),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.orange),
                onPressed: () {
                  playSound(2);
                },
                child: Text(''),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.yellow),
                onPressed: () {
                  playSound(3);
                },
                child: Text(''),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.teal),
                onPressed: () {
                  playSound(4);
                },
                child: Text(''),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blue),
                onPressed: () {
                  playSound(5);
                },
                child: Text(''),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.purple),
                onPressed: () {
                  playSound(6);
                },
                child: Text(''),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.green),
                onPressed: () {
                  playSound(7);
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
