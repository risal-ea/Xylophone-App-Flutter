import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    const XylophoneApp(),
  );
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key});

  void playSound({number}) {
    final player = AudioPlayer();
    player.play(AssetSource('note${number}.wav'));
  }

  Expanded buildKey({soundNumber, xcolor}) {
    return Expanded(
      // Wrap each GestureDetector with Expanded
      child: GestureDetector(
        onTap: () {
          playSound(number: soundNumber);
        },
        child: Container(
          decoration: BoxDecoration(
            color: xcolor,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildKey(soundNumber: '1', xcolor: Colors.deepPurple),
                buildKey(soundNumber: '2', xcolor: Colors.red),
                buildKey(soundNumber: '3', xcolor: Colors.blue),
                buildKey(soundNumber: '4', xcolor: Colors.green),
                buildKey(soundNumber: '5', xcolor: Colors.cyan),
                buildKey(soundNumber: '6', xcolor: Colors.tealAccent),
                buildKey(soundNumber: '7', xcolor: Colors.grey),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
