import 'package:flutter/material.dart';
import 'package:piano_app/widgets/piano_key.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final whiteKeyWidth = screenWidth / 8;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            // Row for White Keys
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                PianoKey(note: 'C4'),
                PianoKey(note: 'D'),
                PianoKey(note: 'E'),
                PianoKey(note: 'F'),
                PianoKey(note: 'G'),
                PianoKey(note: 'A'),
                PianoKey(note: 'B'),
                PianoKey(note: 'C5'),
              ],
            ),
            // Positioned Row for Black Keys
            Positioned(
              top: 0,
              left: 0,
              child: Row(
                children: <Widget>[
                  SizedBox(width: whiteKeyWidth * 0.75),
                  PianoKey(note: 'Db', isSharp: true),
                  SizedBox(width: whiteKeyWidth * 0.5),
                  PianoKey(note: 'Eb', isSharp: true),
                  SizedBox(width: whiteKeyWidth * 1.5),
                  PianoKey(note: 'Gb', isSharp: true),
                  SizedBox(width: whiteKeyWidth * 0.5),
                  PianoKey(note: 'Ab', isSharp: true),
                  SizedBox(width: whiteKeyWidth * 0.5),
                  PianoKey(note: 'Bb', isSharp: true),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
