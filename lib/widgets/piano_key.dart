import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class PianoKey extends StatelessWidget {
  final String note;
  final bool isSharp;
  static final AudioPlayer player = AudioPlayer();

  PianoKey({Key? key, required this.note, this.isSharp = false})
      : super(key: key);

  Future<void> playSound() async {
    await player.setSource(AssetSource('sounds/$note.ogg'));
    await player.resume();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final keyWidth = screenWidth / (isSharp ? 28 : 14);
    final keyHeight = MediaQuery.of(context).size.height * (isSharp ? 0.8 : 1);

    return GestureDetector(
      onTap: playSound,
      child: Container(
        width: keyWidth,
        height: keyHeight,
        margin: EdgeInsets.symmetric(horizontal: 1),
        decoration: BoxDecoration(
          color: isSharp ? Colors.black : Colors.white,
          border: Border.all(color: Colors.black),
        ),
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(bottom: 8), // Padding from bottom for label
          child: Text(
            note,
            style: TextStyle(
              color: isSharp ? Colors.white : Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
