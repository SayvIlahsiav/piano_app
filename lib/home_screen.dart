import 'package:flutter/material.dart';
import 'package:piano_app/widgets/piano_key.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            // Create a row of white keys
            Row(
              children: [
                PianoKey(note: 'C4'),
                PianoKey(note: 'D'),
                PianoKey(note: 'E'),
                PianoKey(note: 'F'),
                PianoKey(note: 'G'),
                PianoKey(note: 'A'),
                PianoKey(note: 'B'),
                PianoKey(note: 'C5'), // Next octave C
              ],
            ),
            // Overlay the black keys in appropriate positions
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Row(
                children: [
                  Spacer(flex: 1),
                  PianoKey(note: 'Db', isSharp: true),
                  Spacer(flex: 2),
                  PianoKey(note: 'Eb', isSharp: true),
                  Spacer(flex: 3),
                  PianoKey(note: 'Gb', isSharp: true),
                  Spacer(flex: 2),
                  PianoKey(note: 'Ab', isSharp: true),
                  Spacer(flex: 2),
                  PianoKey(note: 'Bb', isSharp: true),
                  Spacer(flex: 3),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
