import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int num) {
    final player = AudioPlayer();
    player.play(AssetSource('note$num.wav'));
  }

  Expanded buildKey({Color color, int soundNo}) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          // backgroundColor: MaterialStateProperty.all<Color>(color)),
          primary: color,
        ),
        onPressed: () {
          playSound(soundNo);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.red, soundNo: 1),
                buildKey(color: Colors.orange, soundNo: 2),
                buildKey(color: Colors.yellow.shade300, soundNo: 3),
                buildKey(color: Colors.green, soundNo: 4),
                buildKey(color: Colors.teal, soundNo: 5),
                buildKey(color: Colors.blue, soundNo: 6),
                buildKey(color: Colors.purple, soundNo: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
