import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: ElevatedButton(
          onPressed: () {
            playSound(soundNumber);
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(color),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Xylophone"),
          titleTextStyle: TextStyle(
              color: Colors.purple, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.lightBlueAccent, soundNumber: 5),
              buildKey(color: Colors.blue[700], soundNumber: 6),
              buildKey(color: Colors.purple, soundNumber: 7),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      playSound(8);
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.pink[300]),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
