import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const PianoApp());

class PianoApp extends StatelessWidget {
  const PianoApp({super.key});
  Future<void> playSound(int noteNumber) async {
    final player = AudioPlayer();
    await player.play(AssetSource('sounds/c4.ogg'));
  }

  Expanded buildKey({required Color color, required int noteNumber}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(noteNumber);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                buildKey(color: Colors.red, noteNumber: 1),
                buildKey(color: Colors.green, noteNumber: 2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
