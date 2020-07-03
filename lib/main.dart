import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<MaterialColor> colors = [
    Colors.pink,
    Colors.purple,
    Colors.deepPurple,
    Colors.orange,
    Colors.indigo,
    Colors.blue,
    Colors.yellow,
    Colors.green,
    Colors.teal,
    Colors.blueGrey
  ];

  Widget xlyophone(Color color, int index) {
    return Container(
      color: color,
      height: 110,
      width: MediaQuery.of(context).size.width,
      child: GestureDetector(
        onTap: () {
          print(index);
          final AudioCache player = AudioCache();
          player.play('note${index}.wav');

        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
            itemCount: colors.length,
            itemBuilder: (BuildContext context, index) {
              return xlyophone(colors[index], index);
            }),
      ),

    );
  }
}
