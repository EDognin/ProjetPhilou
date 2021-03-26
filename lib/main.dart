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
    player.play('note$note.wav');
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
    var keys = <Widget>[];

    // for (var i = 1; i == 7; i++) keys.add(buildKey(i));

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1),
              buildKey(2),
              buildKey(3),
              buildKey(4),
              buildKey(5),
              buildKey(6),
              buildKey(7)
            ],
          ),
        ),
      ),
    );
  }
}
