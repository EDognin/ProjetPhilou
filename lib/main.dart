import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  var keyColors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.lightGreen,
    Colors.green,
    Colors.blue,
    Colors.purple
  ];

  void playSound(int note) {
    final player = AudioCache();
    player.play('non$note.aac');
  }

  Expanded buildKey(int note) {
    return Expanded(
      child: FlatButton(
          onPressed: () {
            playSound(note);
          },
          color: keyColors[note - 1]),
    );
  }

  @override
  Widget build(BuildContext context) {
    var libelle = <Text>[
      Text(
        "NON !!",
        style: TextStyle(backgroundColor: Colors.teal, color: Colors.white),
      )
    ];

    // for (var i = 1; i == 7; i++) keys.add(buildKey(i));

    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: TextButton(
              onPressed: () {
                playSound(1);
              },
              child: libelle[0],
            ),
          ),
        ),
      ),
    );
  }
}
