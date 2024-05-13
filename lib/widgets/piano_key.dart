import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class PianoKey extends StatelessWidget {
  final String note;
  final Color color;
  static final AudioPlayer player = AudioPlayer(); // Shared player instance

  // Constructor with required parameters
  PianoKey({
    Key? key,
    required this.note,
    required this.color,
  }) : super(key: key);

  // Method to play sound
  Future<void> playSound() async {
    await player.setSource(AssetSource('sounds/$note.ogg'));
    player.resume(); // This starts playing the audio
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
