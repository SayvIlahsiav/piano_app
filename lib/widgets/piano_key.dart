import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class PianoKey extends StatelessWidget {
  final String note;
  final Color color;
  final AudioCache player;

  // Constructor with required parameters
  PianoKey({
    Key? key,
    required this.note,
    required this.color,
    required this.player,
  }) : super(key: key);

  // Method to play sound
  Future<void> playSound() async {
    final player = AudioPlayer();
    await player.play(AssetSource('sounds/$note.ogg'));
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: playSound,
        child: Container(
          color: color,
          height: 150, // Adjust the height based on your layout needs
          alignment: Alignment.center,
          child: Text(
            note,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
