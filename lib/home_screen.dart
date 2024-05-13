import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:piano_app/widgets/piano_key.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Simple Piano')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          PianoKey(note: 'c4', color: Colors.white),
          PianoKey(note: 'cs4', color: Colors.black),
          PianoKey(note: 'd4', color: Colors.white),
          PianoKey(note: 'ds4', color: Colors.black),
          PianoKey(note: 'e4', color: Colors.white),
          PianoKey(note: 'f4', color: Colors.white),
          PianoKey(note: 'fs4', color: Colors.black),
          PianoKey(note: 'g4', color: Colors.white),
          PianoKey(note: 'gs4', color: Colors.black),
          PianoKey(note: 'a4', color: Colors.white),
          PianoKey(note: 'as4', color: Colors.black),
          PianoKey(note: 'b4', color: Colors.white),
          PianoKey(note: 'c5', color: Colors.white),
        ],
      ),
    );
  }
}
